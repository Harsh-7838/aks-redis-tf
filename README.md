# Terraform AKS and Redis Deployment

This repository contains Terraform configurations to create two AKS clusters in Azure and deploy Redis on those clusters using Helm charts.

## Structure

├── aks-clusters # Folder for AKS cluster creation
│ ├── main.tf # Main Terraform configuration for AKS creation
│ ├── variables.tf # Variables used in AKS configuration
│ ├── provider.tf # Azure provider configuration
│ └── README.md # Instructions for creating AKS clusters
│
├── redis-deployment # Folder for Redis deployment on AKS
│ ├── main.tf # Main Terraform configuration for Redis deployment
│ ├── variables.tf # Variables used in Redis deployment
│ ├── provider.tf # Azure provider configuration (optional if not changing)
│ └── README.md # Instructions for deploying Redis on AKS
│
└── README.md # Project README file


## Usage

### AKS Cluster Creation

Navigate to the `aks-tf` folder and follow the instructions in the README to create two AKS clusters in Azure.

### Redis Deployment on AKS

Navigate to the `redis-tf` folder and follow the instructions in the README to deploy Redis on the AKS clusters created in the previous step.