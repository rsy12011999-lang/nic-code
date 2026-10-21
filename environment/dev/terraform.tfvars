  rg = {
  rg1 = { 
  name     = "rg_rk"
  location = "centralindia"
 } 
}

vnet = {
  vet1 = {
  name                = "vnet-rk"
  location            = "centralindia"
  resource_group_name = "rg_rk"
  address_space       = ["10.0.0.0/16"]
 }
}

sub = {
    sub1 = {
  name                 = "frontend_subnet"
  resource_group_name  = "rg_rk"
  virtual_network_name = "vnet-rk"
  address_prefixes     = ["10.0.1.0/24"]
 }
}
nic = {
  nic1 = {
    name                          = "rk-nic-01"
    location                      = "centralindia"
    resource_group_name           = "rg_rk"
    ip_name                       = "ipconfig1"
    private_ip_address_allocation = "Dynamic"
  }
}