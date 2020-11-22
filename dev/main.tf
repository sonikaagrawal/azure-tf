# module "dev" {
#    source = "../module/template"
#    rg = "rg-dev"
#    region = "eastus"
# }
provider "azurerm" {
    version = "~>2.0"
    features {}
    subscription_id="4b37979e-7cbb-4e77-9d44-cf78a1681f4f"
    client_id = "37fb45ff-a658-4e2e-b3a8-897d48a67899"
    client_secret="b1e5c65c-bf6b-4fb2-9256-33fd50271847"
    tenant_id= "560941c2-cd68-484c-892f-0056e1d1947b"
}

#Create New Resource Group in Azure Subscription
resource "azurerm_resource_group" "rg-dev" {
    name                = "rg-dev"
   location            = "eastus"
}

