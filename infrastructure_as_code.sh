#!/bin/bash

#Variables
TF_DIR="/path/to/terraform/config"

#Navigate to Terraform directory
cd $TF_DIR

# Run terraform apply
terraform apply -auto-approve

echo "Terraform apply completed"

