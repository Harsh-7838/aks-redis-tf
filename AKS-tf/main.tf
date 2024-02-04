# Include resource group creation
resource "azurerm_resource_group" "rg" {
  name     = "k8s-resource-group"
  location = "East US" # Change to your preferred region
}

# Include AKS cluster creation
resource "azurerm_kubernetes_cluster" "aks_clusters" {
  for_each            = var.aks_clusters
  name                = each.key
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "${each.key}-dns"

  default_node_pool {
    name       = "default"
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}