module "resorce_group" {
    source = "../../modules/azurerm_resource_group"
    rg = var.rg
}
    
module "azurerm_virtual_network" {
    depends_on = [ module.resorce_group ]
    source = "../../modules/azurerm_virtual_network"
vnet = var.vnet
}

module "azurerm_subnet" {
    depends_on = [ module.azurerm_virtual_network ]
    source = "../../modules/azurerm_subnet"
sub = var.sub
}

module "azurerm_nic" {
    depends_on = [ module.azurerm_subnet ]
    source = "../../modules/azurerm_nic"
    nic = var.nic
}