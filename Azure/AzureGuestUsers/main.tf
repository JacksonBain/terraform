# Specify the Azure Provider source and version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

# Sends Invite to Jackson Bain
resource "azuread_invitation" "jbain" {
  user_email_address = var.jbainemail
  user_display_name  = var.jbainname
  redirect_url       = "https://portal.azure.com"

  message {
    language = "en-US"
  }
}

#Sends invite to Brandon Harper
#resource "azuread_invitation" "bharper" {
#  user_email_address = var.bharperemail
#  user_display_name  = var.bharpername
#  redirect_url       = "https://portal.azure.com"
#
#  message {
#    language = "en-US"
#  }
#}