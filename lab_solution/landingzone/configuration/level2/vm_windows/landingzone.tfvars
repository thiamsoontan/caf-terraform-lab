landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "networking"
  level               = "level2"
  key                 = "vm"
  tfstates = {
    networking = {
      level   = "lower"
      tfstate = "networking.tfstate"
    }
  }
}