variable "resmain" {}

module "res" {
  source  = "../../ResourceGroup"
  resmain = var.resmain
}
variable "vnet1" {}
module "vnetji" {
  source     = "../../VirtualNetwork"
  vnet1      = var.vnet1
  depends_on = [module.res]
}
variable "sub" {}
module "su" {
  source     = "../../Subnet"
  sub        = var.sub
  depends_on = [module.vnetji]

}
variable "keyv" {}
module "keyji" {
  source     = "../../Keyvault"
  keyv       = var.keyv
  depends_on = [module.su]

}
variable "vmnic" {}
module "VM" {
  source     = "../../VirtualMachine"
  vmnic      = var.vmnic
  depends_on = [module.keyji]

}
variable "bastion"{}
module "bassi"{
    source= "../../Bastion"
    bastion=var.bastion
    depends_on = [ module.VM ]
}


