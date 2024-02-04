# Terraform Module: Redis Cluster Deployment on AKS

This Terraform module automates the deployment of a Redis cluster on each Azure Kubernetes Service (AKS) cluster using Helm charts. It leverages Infrastructure as Code (IaC) principles to ensure consistency and reproducibility across environments.

## Overview

This module simplifies the deployment of Redis clusters on AKS clusters by abstracting away the manual steps involved in the process. you need to configures the Kubernetes context and kubeconfig path to deploy Redis on the desired AKS clusters.

## Features

- Automates the deployment of Redis clusters on AKS using Helm charts.
- Promotes consistency and reproducibility through Infrastructure as Code.

## Structure

├── Redis-tf # Folder for AKS cluster creation
│ ├── main.tf # Main Terraform configuration for redis deployement.
│ ├── variables.tf # Variables used in redis configuration
│ ├── provider.tf # Azure provider configuration
│ ├── backend.tf # Backend configuration for remote state storage
│ ├── terraform.tfvars # Terraform variables file (customize as needed)
│ └── README.md # Instructions for deploying redis
│
└── README.md # Project README file

## Usage

1. **Set up Azure authentication**: Ensure you have Azure CLI configured and authenticated (`az login`).

2. **Update kubeconfig paths and contexts**: Update the kubeconfig paths and contexts in the `main.tf` file to point to the desired AKS clusters. Modify the `kubernetes` block in the `helm_release` resource to specify the `kubeconfig` and `context` for each AKS cluster.

3. **Initialize Terraform**: Run `terraform init` to initialize the Terraform environment.

4. **Review and adjust variables**: Review the variables in `variables.tf` and adjust their values as needed.

5. **Deploy Redis cluster**: Run `terraform plan` to see the execution plan and `terraform apply` to deploy the Redis cluster on each AKS cluster.

6. **Verify deployment**: Use `kubectl` to verify that Redis is successfully deployed on each AKS cluster.

## Inputs

- `redis_chart_version`: Version of the Redis Helm chart to be deployed.
- `redis_chart_url`: url of the Redis Helm chart repo to be used.

## Outputs

- None


