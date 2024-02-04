# Define variables
variable "aks_clusters" {
  description = "Map of AKS clusters to create"
  type = map(object({
    node_count = number
    vm_size    = string
  }))
  default = {
    cluster1 = {
      node_count = 1
      vm_size    = "Standard_B2s"
    }
    cluster2 = {
      node_count = 1
      vm_size    = "Standard_B2s"
    }
  }
}
