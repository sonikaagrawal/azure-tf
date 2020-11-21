module "dev" {
   source = "..azure-tf/module/template"
   rg = "rg-dev"
   region = "eastus"
}
