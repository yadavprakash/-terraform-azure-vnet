provider "azurerm" {
  features {}
}


##-----------------------------------------------------------------------------
## Resource Group module call
## Resource group in which all resources will be deployed.
##-----------------------------------------------------------------------------
module "resource_group" {
  source      = "git::https://github.com/opsstation/terraform-azure-resource-group.git?ref=v1.0.0"
  name        = local.name
  environment = local.environment
  label_order = local.label_order
  location    = "North Europe"
}


locals {
  name        = "opsstation"
  environment = "test"
  label_order = ["name", "environment"]
}


##-----------------------------------------------------------------------------
## Virtual Network module call.
##-----------------------------------------------------------------------------

module "vnet" {
  source                 = "./../."
  name                   = local.name
  environment            = local.environment
  resource_group_name    = module.resource_group.resource_group_name
  location               = module.resource_group.resource_group_location
  address_spaces         = ["10.0.0.0/16"]
  enable_network_watcher = false         # To be set true when network security group flow logs are to be tracked and network watcher with specific name is to be deployed.
}

