data "azurerm_subnet" "data_block" {
  name                 = "frontend_subnet"
  virtual_network_name = "vnet-rk"
  resource_group_name  = "rg_rk"
}

resource "azurerm_network_interface" "nic" {
  for_each = var.nic

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = data.azurerm_subnet.data_block.id
    private_ip_address_allocation = each.value.private_ip_address_allocation
}
}