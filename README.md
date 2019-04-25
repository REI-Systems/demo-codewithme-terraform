# Terraform - LAMP Stack in AWS

## Summary

Terraform codes to create a LAMP stack with their own VPC and network components.

## Terraform

### Network
VPC with 1 public, 1 private subnet.
2 Subnets - one for Web Servers and another one is for DB Servers.
Security groups for each Servers.

### Instances
2 Amazon Centos Linux Instances with existing SSH keys.

## How to run

Make sure that you have a SSH key and mentioned in vars.tf.

Default AWS region is us-east-1, change the AWS region in vars.tf to your preference.

Use the below commands to build, review and execute.

terraform init  
terraform get  
terraform plan  
terraform apply  
