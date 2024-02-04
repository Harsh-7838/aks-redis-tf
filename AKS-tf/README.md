# Terraform Module: Creating Multiple AKS Clusters

This Terraform module demonstrates the reusability of code to create multiple Azure Kubernetes Service (AKS) clusters using Infrastructure as Code (IaC) principles. Additionally, it showcases storing the Terraform state remotely in Azure Blob Storage containers.

## Overview

This module provides a flexible and reusable solution for provisioning two AKS clusters in Azure using Terraform. By centralizing the infrastructure configuration, it promotes consistency, scalability, and ease of management.

## Features

- Creates two AKS clusters with the same configuration.
- Stores Terraform state files remotely in Azure Blob Storage containers.
- Demonstrates the reusability of Terraform code for creating multiple structures.

## Structure

├── AKS-tf # Folder for AKS cluster creation
│ ├── main.tf # Main Terraform configuration for AKS creation
│ ├── variables.tf # Variables used in AKS configuration
│ ├── provider.tf # Azure provider configuration
│ ├── backend.tf # Backend configuration for remote state storage
│ ├── terraform.tfvars # Terraform variables file (customize as needed)
│ └── README.md # Instructions for creating AKS clusters
│
└── README.md # Project README file



## Usage

1. **Set up Azure authentication**: Ensure you have Azure CLI configured and authenticated (`az login`).

2. **Create Azure Blob Storage containers**: Set up Azure Blob Storage containers to store Terraform state files. Update the `backend.tf` file in the `AKS-tf` folder with the appropriate storage account details.

3. **Navigate to the `aks-tf` folder**: Run `cd aks-tf` in your terminal.

4. **Initialize Terraform**: Run `terraform init` to initialize the Terraform environment and configure the backend for remote state storage.

5. **Review and adjust variables**: Review the variables in `variables.tf` and adjust the values in `terraform.tfvars` as needed.

6. **Review and apply changes**: Review the configuration in `main.tf`. Then run `terraform plan` to see the execution plan and `terraform apply` to create the AKS clusters.

7. **Clean up**: After testing, run `terraform destroy` to delete the AKS clusters and associated resources.

