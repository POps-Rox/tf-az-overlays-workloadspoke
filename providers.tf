# Provider configurations for standalone validation and CI
# When used as a module, providers are passed by the caller
provider "azurerm" {
  features {}
}

provider "azurerm" {
  alias = "hub_network"
  features {}
}
