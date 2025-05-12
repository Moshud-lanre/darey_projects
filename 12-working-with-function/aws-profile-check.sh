#!/bin/bash

# Function to check if AWS CLI is installed
check_aws_cli() {
    if ! command -v aws &> /dev/null; then        
        echo "AWS CLI is not installed. Please install it before proceeding."        
        return 1    
    fi
}



# Function to check if AWS profile is set
check_aws_profile() {
    if [ -z "$AWS_PROFILE" ]; then       
        echo "AWS profile environment variable is not set."        
        return 1
    fi
}

check_aws_profile








# 