module "mydev" {
   source = "../module/template.tf"
   rg = "rg-dev"
   region = "eastus"
}
