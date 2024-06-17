resmain = {
  res = {
    rename   = "akkiresource"
    location = "westeurope"
  }
}
vnet1 = {
  vnet = {
    vnetname            = "akkivnet"
    location            = "westeurope"
    resource_group_name = "akkiresource"
    address_space       = ["10.0.0.0/16"]
  }
}

sub = {
  su = {
    subname              = "akkisub"
    resource_group_name  = "akkiresource"
    virtual_network_name = "akkivnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
  su2 = {
    subname              = "AzureBastionSubnet"
    resource_group_name  = "akkiresource"
    virtual_network_name = "akkivnet"
    address_prefixes     = ["10.0.2.0/24"]
  }
}
keyv = {
  key = {
    keyvalue            = "akkikeyvaultnew"
    location            = "westeurope"
    resource_group_name = "akkiresource"
  }
}

vmnic = {
  vm = {
    nicname             = "akkinic"
    location            = "westeurope"
    resource_group_name = "akkiresource"
    vmname              = "akkivm"
  }
}
bastion={
    bas={
         pubname                = "akkipublic"
  location            = "westeurope"
  resource_group_name = "akkiresource"
  basname= "akkibastion"
    }
}
