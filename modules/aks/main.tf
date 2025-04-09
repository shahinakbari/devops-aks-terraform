resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = azurerm_resource_group.this.name
  dns_prefix          = "aks-${var.aks_name}"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}

resource "azurerm_key_vault" "this" {
  name                        = "${var.aks_name}-kv"
  location                    = var.location
  resource_group_name         = azurerm_resource_group.this.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
}

resource "azurerm_key_vault_secret" "example" {
  name         = "nginx-password"
  value        = "SuperSecret123!"
  key_vault_id = azurerm_key_vault.this.id
}


data "azurerm_client_config" "current" {}

