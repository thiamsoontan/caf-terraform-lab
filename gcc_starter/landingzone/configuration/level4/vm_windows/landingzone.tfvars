landingzone = {
  backend_type        = "azurerm"
  level               = "level4"
  key                 = "vm_windows"    
  global_settings_key = "networking" 
  tfstates = {
    #shared_services = {
    #  level   = "lower"
    #  tfstate = "shared_services.tfstate" 
    #}
    networking = {
      level   = "lower"
      tfstate = "networking.tfstate.tfstate"
    }    
  }
}

