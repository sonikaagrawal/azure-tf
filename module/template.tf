provider "azurerm" {
    version = "~>2.0"
    features {}
    subscription_id="a0d9722a-1c0a-4400-baa6-dea5add6b434"
    client_id = "4486e1f4-0e0f-473a-b399-0a1a88d75e75"
    client_secret="2LzdzlFuyJ~M-u8Qxc1~Eky6uZDJv6o~J2"
    tenant_id= "e8efcd8b-e3e7-49a2-b915-351142a365f1"
}

# Create New Resource Group in Azure Subscription
resource "azurerm_resource_group "rg" {
    name                = "${var.rg}"
 location            = "${var.region}"
}

