Skip to content
Search or jump to…
Pull requests
Issues
Marketplace
Explore
 
@chetanchatrath 
chetanchatrath
/
TFE4
Public
Code
Issues
Pull requests
Actions
Projects
Wiki
Security
Insights
Settings
TFE4/main.tf
@chetanchatrath
chetanchatrath Create main.tf
Latest commit c358e36 10 minutes ago
 History
 1 contributor
26 lines (22 sloc)  540 Bytes
   
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features{}
  
  subscription_id = "c614835e-9b30-4377-8676-159532c4a446"
  tenant_id = "7a4d8448-3ab0-4c53-85f5-4f98b0e89d44"
  client_id = "113aed03-3be9-4eb5-b55d-c01be05c4f76"
  client_secret = "UnJ8Q~m5cZEQIJyHuw~FeLStZowqinXUJBGGnaqR"
}

resource "azurerm_resource_group" "myresourcegroup" {
  name     = "TFE2"
  location = "canadaeast"

  tags = {
    environment = "Production"
  }
}

