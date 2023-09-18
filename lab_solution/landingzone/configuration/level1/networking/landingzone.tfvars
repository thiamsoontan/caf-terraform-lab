landingzone = {
  backend_type        = "azurerm"
  level               = "level1" 
  key                 = "networking"
  global_settings_key = "launchpad"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "caf_launchpad.tfstate"
    }
  }
}






