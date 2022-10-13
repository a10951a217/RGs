resource "azurerm_resource_group" "rg" {
  for_each = var.resource_group
  name = each.key
  location = each.value
}

resource "azurerm_virtual_network" "vnet1_dev" {
  name = var.vnet["Vnet_name"]
  address_space = [var.vnet["Vnet_address"]]
  resource_group_name = azurerm_resource_group.rg["Dev-RG"].name
  location = azurerm_resource_group.rg["Dev-RG"].location
}

resource "azurerm_subnet" "subnets_dev" {
    for_each = var.subnets
    name = each.key
    address_prefixes = [each.value]
    resource_group_name = azurerm_resource_group.rg["Dev-RG"].name
    virtual_network_name = azurerm_virtual_network.vnet1_dev.name
}