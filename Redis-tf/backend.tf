terraform {
  backend "azurerm" {
    storage_account_name = "<storage_account_name>"
    container_name       = "<container_name>"
    key                  = "terraform.tfstate"
    resource_group_name  = "<resource_group_name>"
    subscription_id      = "<subscription_id>"
    tenant_id            = "<tenant_id>"
  }
}
