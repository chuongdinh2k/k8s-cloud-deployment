# Terraform Configuration for AWS Infrastructure

## Overview

This folder contains Terraform configuration files for setting up AWS infrastructure. The configuration includes creating a VPC, subnets, route tables, security groups, IAM roles, and an EC2 instance for running Jenkins.

## Folder Structure

- `main.tf`: The main Terraform configuration file that includes the overall infrastructure setup.
- `variables.tf`: Defines the input variables used in the Terraform configuration.
- `outputs.tf`: Defines the output values that are returned after the infrastructure is created.
- `vpc.tf`: Contains the configuration for creating the VPC, subnets, route tables, and internet gateway.
- `iam-role.tf`: Defines the IAM role used by the EC2 instance.
- `iam-instance-profile.tf`: Defines the IAM instance profile that attaches the IAM role to the EC2 instance.
- `gather.tf`: Contains additional resource configurations, such as AMI data sources.
- `backend.tf`: Configures the remote backend for storing the Terraform state.
- `README.md`: This file. Provides an overview of the Terraform configuration and instructions for usage.

## Prerequisites

- Terraform installed on your local machine. You can download it from [terraform.io](https://www.terraform.io/downloads.html).
- AWS CLI configured with the necessary permissions to create resources. You can configure it using `aws configure`.

## Getting Started

### Initialize Terraform

1. Create terraform variables.tfvars file in the same directory as your main.tf file.

2. Initialize the Terraform configuration:

terraform init

3. Plan the Infrastructure:

terraform plan -var-file="variables.tfvars"

4. Apply the Infrastructure:

terraform apply -var-file="variables.tfvars"

5. Destroy the Infrastructure:

terraform destroy -var-file="variables.tfvars"

### example of variables.tfvars file:

vpc-name = "Jenkins-vpc"
igw-name = "Jenkins-igw"
subnet-name = "Jenkins-subnet"
rt-name = "Jenkins-route-table"
sg-name = "Jenkins-sg"
instance-name = "Jenkins-server"
key-name = "your-key-pair-name"
iam-role = "Jenkins-iam-role"
