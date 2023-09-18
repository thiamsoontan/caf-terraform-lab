landingzone = {
  backend_type        = "azurerm"
  level               = "level4"
  key                 = "vm_windows"    
  global_settings_key = "networking" 
  tfstates = {
    networking = {
      level   = "lower"
      tfstate = "networking.tfstate"
    }    
  }
}

