
# Do not change the following values
passthrough   = false
random_length = 3
inherit_tags  = true
prefix        = "ignit2"

# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "southeastasia"
  region2 = "eastasia"
}

launchpad_key_names = {
  keyvault = "level0"
  azuread_app            = "caf_launchpad_level0" # from lab
  keyvault_client_secret = "aadapp-caf-launchpad-level0"   # from lab
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}

tags = {
  Project_Code               = "CAF-TF"
  Name                       = "CAF Terraform Landingzones and solutions"
  Data_Classification        = "Internal"
  Application_Classification = "Standard"
}
