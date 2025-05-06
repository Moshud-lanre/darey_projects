#!/bin/bash

# Function to create S3 buckets for different departments
create_s3_buckets() { 
    company="datawise"   
    departments=("marketing" "sales" "hr" "operations" "media") 
    
    for department in "${departments[@]}"; do
            bucket_name="${company}-${department}-data-bucketz"
            # echo $bucket_name
        
        # Check if the bucket already exists
            if aws s3api head-bucket --bucket "$bucket_name" 2>/dev/null; then
                echo "S3 bucket '$bucket_name' already exists."
            else
                # Create S3 bucket using AWS CLI
                aws s3api create-bucket --bucket "$bucket_name" --region us-east-1
                if [ $? -eq 0 ]; then
                    echo "S3 bucket '$bucket_name' created successfully."
                else
                    echo "Failed to create S3 bucket '$bucket_name'."
                fi
            fi
    done
}
  
create_s3_buckets