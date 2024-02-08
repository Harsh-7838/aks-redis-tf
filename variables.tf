variable "aks_clusters" {
  description = "Map of AKS cluster configurations"
  type        = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    vm_size             = string
    environment         = string
  }))
  default = {
    cluster1 = {
      name                = "cluster1"
      location            = "East US"
      resource_group_name = "First-test"
      dns_prefix          = "cluster1dns"
      vm_size             = "Standard_DS2_v2"
      environment         = "dev"
    }
    cluster2 = {
      name                = "cluster2"
      location            = "West US"
      resource_group_name = "First-test"
      dns_prefix          = "cluster2dns"
      vm_size             = "Standard_DS2_v2"
      environment         = "dev2"
    }
  }
}


variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "AKS-REDIS"
}

variable "location" {
  description = "The location/region for the resource group"
  type        = string
  default     = "East US"
}

variable "redis_chart_version" {
  description = "Version of the Redis Helm chart"
  type        = string
  default     = "15.0.6"
}

variable "redis_chart_url" {
  description = "Version of the Redis Helm chart"
  type        = string
  default     = "https://charts.bitnami.com/bitnami"
}

variable "config_path_var"{
  description = "Provide the path of your kubefile"
  type = string
  default = "C:\\Users\\harsh.rastogi\\.kube\\config"
}