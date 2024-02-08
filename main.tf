resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Create AKS clusters
resource "azurerm_kubernetes_cluster" "aks_clusters" {
  for_each = var.aks_clusters

  name                = each.value.name
  location            = each.value.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = each.value.environment
  }

  depends_on = [ azurerm_resource_group.rg ]

}


# Null resource to run az aks get-credentials command locally
resource "null_resource" "get_credentials" {
  for_each = var.aks_clusters

  triggers = {
    cluster_name = azurerm_kubernetes_cluster.aks_clusters[each.key].name
  }

  provisioner "local-exec" {
    command = "az aks get-credentials --resource-group ${azurerm_kubernetes_cluster.aks_clusters[each.key].resource_group_name} --name ${azurerm_kubernetes_cluster.aks_clusters[each.key].name} --overwrite-existing --admin"
  }

  depends_on = [ azurerm_kubernetes_cluster.aks_clusters ]

}



resource "helm_release" "redis-cluster-1" {
  for_each = { for key, value in var.aks_clusters : key => value if key == "cluster1" }

  
  provider = helm.cluster1
  
  name       = "redis-cluster"
  repository = var.redis_chart_url
  chart      = "redis"
  version    = var.redis_chart_version

  namespace       = "default"
  create_namespace = true

  set {
    name  = "cluster.enabled"
    value = "true"
  }
  set {
    name  = "cluster.slaveCount"
    value = "2" # Number of slave nodes
  }

  depends_on = [ azurerm_kubernetes_cluster.aks_clusters ]

}


resource "helm_release" "redis-cluster-2" {
  for_each = { for key, value in var.aks_clusters : key => value if key == "cluster2" }

  
  provider = helm.cluster2
  
  name       = "redis-cluster"
  repository = var.redis_chart_url
  chart      = "redis"
  version    = var.redis_chart_version

  namespace       = "default"
  create_namespace = true

  set {
    name  = "cluster.enabled"
    value = "true"
  }
  set {
    name  = "cluster.slaveCount"
    value = "2" # Number of slave nodes
  }

  depends_on = [ azurerm_kubernetes_cluster.aks_clusters ]

}