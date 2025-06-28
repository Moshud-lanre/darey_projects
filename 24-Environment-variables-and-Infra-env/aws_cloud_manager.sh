#!/bin/bash

# array for resource tracking
ec2_running_instances=()
s3_buckets=()

# Command line arguments
instance_base_name=$1
instance_count="$2"
instance_type=${3:-$INSTANCE_TYPE_DEFAULT}
bucket_name=$4

# Function to create an EC2 instance
create_ec2(){

    echoecho "Attempting to create $instance_count EC2 instance(s) with base name: $instance_base_name ($instance_type)..."

    # Instance name validation
    if [ -z "$instance_base_name" ]; then
        echo "Error: EC2 instance name cannot be empty."
        exit 1
    fi

    if ! [[ "$instance_count" =~ ^[0-9]+$ ]] || [ "$instance_count" -le 0 ]; then
        echo "Error: Instance count must be a positive integer."
        exit 1
    fi

    for i in $(seq 1 "$instance_count"); do
        local current_instance_name="${instance_base_name}-${i}"
        echo "  - Creating EC2 instance: $current_instance_name"
    done


    instance_id=$(
        aws ec2 run-instances \
        --image-id "$AMI_ID" \
        --count 1 \
        --instance-type "$instance_type" \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$current_instance_name}]" \
        --query 'Instances[0].InstanceId' \
        --output text
    )
    if [ -z "$instance_id" ]; then
        echo "Error: Failed to launch the EC2 instance, Kindly check your input parameters"
        exit 1
    else
        echo "Instance $instance_id launched successfully!"
    fi 

    echo "Waiting for EC2 instance '$instance_name' with ID '$instance_id' to be in running state ..."
    #verification of deployment status
    aws ec2 wait instance-running --instance-ids $instance_id
    if [ $? -eq 0 ]; then
        echo "$instance_name instance is now running."
        ec2_running_instances+=("$instance_name")
        echo
        # Tracking the number of instances running 
        echo "Running instances: ($ec2_running_instances)"
    else
        echo "$instance_name instance did not reach 'running state'."
    fi

}

# Funct to create an S3 bucket
create_s3_bucket(){

    echo "Attempting to create  S3 bucket: $bucket_name ..."

    # Bucket name validation
    if [ -z "$bucket_name" ]; then
        echo "Error: S3 bucket name cannot be empty."
        exit 1
    fi

    #checking if the name is globally unique
    if aws s3api head-bucket --bucket "$bucket_name" 2>/dev/null; then
        echo "S3 bucket '$bucket_name' already exists."
    else
        # Create S3 bucket using AWS CLI
        aws s3api create-bucket --bucket "$bucket_name" --region $AWS_REGION
        if [ $? -eq 0 ]; then
            echo "S3 bucket '$bucket_name' created successfully."
            s3_buckets+=("$bucket_name")
            echo
            # Showing the number of buckets created
            echo "S3 buckets: ($s3_buckets)"
        else
            echo "Failed to create S3 bucket '$bucket_name'."
        fi
    fi
}

# Main execution function
main() {
    echo "=================================="    
    echo " AWS Resource creation Automation Script"    
    echo "=================================="    
    # Verify AWS CLI is installed and configured    
    if ! command -v aws &> /dev/null; then        
        echo "Error: AWS CLI is not installed. Please install and configure it first."        
        exit 1    
    fi    
    # Execute the functions    
    create_ec2
    echo  "=================================="
    echo  
    create_s3_bucket    
    echo  
    echo "=================================="    
    echo " AWS Resource Creation Completed"    
    echo "=================================="
    }

# Execute main function
main

exit 0


