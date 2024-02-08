<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_helm.cluster1"></a> [helm.cluster1](#provider\_helm.cluster1) | n/a |
| <a name="provider_helm.cluster2"></a> [helm.cluster2](#provider\_helm.cluster2) | n/a |
| <a name="provider_null"></a> [null](#provider\_null) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_kubernetes_cluster.aks_clusters](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [helm_release.redis-cluster-1](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [helm_release.redis-cluster-2](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [null_resource.get_credentials](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aks_clusters"></a> [aks\_clusters](#input\_aks\_clusters) | Map of AKS cluster configurations | <pre>map(object({<br>    name                = string<br>    location            = string<br>    resource_group_name = string<br>    dns_prefix          = string<br>    vm_size             = string<br>    environment         = string<br>  }))</pre> | <pre>{<br>  "cluster1": {<br>    "dns_prefix": "cluster1dns",<br>    "environment": "dev",<br>    "location": "East US",<br>    "name": "cluster1",<br>    "resource_group_name": "First-test",<br>    "vm_size": "Standard_DS2_v2"<br>  },<br>  "cluster2": {<br>    "dns_prefix": "cluster2dns",<br>    "environment": "dev2",<br>    "location": "West US",<br>    "name": "cluster2",<br>    "resource_group_name": "First-test",<br>    "vm_size": "Standard_DS2_v2"<br>  }<br>}</pre> | no |
| <a name="input_config_path_var"></a> [config\_path\_var](#input\_config\_path\_var) | Provide the path of your kubefile | `string` | `"C:\\Users\\harsh.rastogi\\.kube\\config"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location/region for the resource group | `string` | `"East US"` | no |
| <a name="input_redis_chart_url"></a> [redis\_chart\_url](#input\_redis\_chart\_url) | Version of the Redis Helm chart | `string` | `"https://charts.bitnami.com/bitnami"` | no |
| <a name="input_redis_chart_version"></a> [redis\_chart\_version](#input\_redis\_chart\_version) | Version of the Redis Helm chart | `string` | `"15.0.6"` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | `"AKS-REDIS"` | no |

## Outputs

No outputs.

## Instructions

Replace provider azurerm block with sp credential values 
Replace the config_path_var value in terraform.tfvars with your kube config path
Now run terraform init , terraform plan and then terraform apply
<!-- END_TF_DOCS -->