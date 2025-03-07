terraform {
  required_version = "~> 1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # cloud {
  #   organization = "leriksen-experiment"
  #   hostname     = "app.terraform.io"
  # }
  backend "local" {
    path = "./terraform.tfstate"
  }
}
