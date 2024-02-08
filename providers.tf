provider "kubernetes" {
  alias = "cluster1"  # Alias the provider to differentiate between AKS clusters
    config_context = "${var.aks_clusters.cluster1.name}-admin"
    config_path = var.config_path_var

}

provider "kubernetes" {
  alias = "cluster2"  # Alias the provider to differentiate between AKS clusters
    config_context = "${var.aks_clusters.cluster2.name}-admin"
    config_path = var.config_path_var

}


provider "helm" {
  alias = "cluster1"
  kubernetes {
    config_context = "${var.aks_clusters.cluster1.name}-admin"
    config_path = var.config_path_var
  }
}

provider "helm" {
  alias = "cluster2"
  kubernetes {
    config_context = "${var.aks_clusters.cluster2.name}-admin"
    config_path = var.config_path_var
  }
}

provider "azurerm" {
  features {}
  subscription_id = "<SubscriptionID>"
  client_id       = "<ServicePrincipalAppID>"
  client_secret   = "<ServicePrincipalPassword>"
  tenant_id       = "<TenantID>"
}
