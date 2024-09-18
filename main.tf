provider "azurerm" {
  features {}
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

resource "azurerm_subnet" "subnet" {
  count              = length(var.subnet_names)
  name               = var.subnet_names[count.index]
  address_prefixes   = [var.subnet_address_spaces[count.index]]
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name = var.resource_group_name

  depends_on = [azurerm_virtual_network.vnet]
}
