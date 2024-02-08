redis_chart_version= "18.12.1"
redis_chart_url = "https://charts.bitnami.com/bitnami"
resource_group_name = "AKS-REDIS"
aks_clusters = {

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

config_path_var = "C:\\Users\\harsh.rastogi\\.kube\\config"