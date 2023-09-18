vnet_peerings = {

  # ingress vnet to internet vnet
  # [TODO: add a peering from ingress to project vnet here]


  vnet_hub_ingress_re1_TO_vnet_internet_re1 = {
    name = "vnet_hub_ingress_re1_TO_vnet_internet_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_hub_ingress_re1"
    }
    to = {
      vnet_key = "vnet_spoke_internet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # ingress vnet to management vnet
  vnet_hub_management_re1_TO_vnet_hub_ingress_re1 = {
    name = "vnet_hub_management_re1_TO_vnet_hub_ingress_re1"
    from = {
      vnet_key = "vnet_hub_management_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_hub_ingress_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_hub_ingress_re1_TO_vnet_hub_management_re1 = {
    name = "vnet_hub_ingress_re1_TO_vnet_management_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_hub_ingress_re1"
    }
    to = {
      vnet_key = "vnet_hub_management_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # internet vnet to management vnet
  vnet_hub_management_re1_TO_vnet_internet_re1 = {
    name = "vnet_hub_management_re1_TO_vnet_internet_re1"
    from = {
      vnet_key = "vnet_hub_management_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_internet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_internet_re1_TO_vnet_hub_management_re1 = {
    name = "vnet_internet_re1_TO_vnet_hub_management_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_internet_re1"
    }
    to = {
      vnet_key = "vnet_hub_management_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # intranet vnet to management vnet
  vnet_hub_management_re1_TO_vnet_intranet_re1 = {
    name = "vnet_hub_management_re1_TO_vnet_intranet_re1"
    from = {
      vnet_key = "vnet_hub_management_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_intranet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_intranet_re1_TO_vnet_hub_management_re1 = {
    name = "vnet_intranet_re1_TO_vnet_hub_management_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_intranet_re1"
    }
    to = {
      vnet_key = "vnet_hub_management_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # devops vnet to management vnet
  vnet_hub_management_re1_TO_vnet_spoke_devops_re1 = {
    name = "vnet_hub_management_re1_TO_vnet_spoke_devops_re1"
    from = {
      vnet_key = "vnet_hub_management_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_devops_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_spoke_devops_re1_TO_vnet_hub_management_re1 = {
    name = "vnet_spoke_devops_re1_TO_vnet_hub_management_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_devops_re1"
    }
    to = {
      vnet_key = "vnet_hub_management_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }  


  # internet vnet to devops vnet
  vnet_spoke_devops_re1_TO_vnet_internet_re1 = {
    name = "vnet_spoke_devops_re1_TO_vnet_internet_re1"
    from = {
      vnet_key = "vnet_spoke_devops_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_internet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_internet_re1_TO_vnet_spoke_devops_re1 = {
    name = "vnet_internet_re1_TO_vnet_spoke_devops_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_internet_re1"
    }
    to = {
      vnet_key = "vnet_spoke_devops_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # intranet vnet to devops vnet
  vnet_spoke_devops_re1_TO_vnet_intranet_re1 = {
    name = "vnet_spoke_devops_re1_TO_vnet_intranet_re1"
    from = {
      vnet_key = "vnet_spoke_devops_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_intranet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_intranet_re1_TO_vnet_spoke_devops_re1 = {
    name = "vnet_intranet_re1_TO_vnet_spoke_devops_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_spoke_intranet_re1"
    }
    to = {
      vnet_key = "vnet_spoke_devops_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }  


  # ingress vnet to intranet vnet
  vnet_internet_re1_TO_vnet_hub_ingress_re1 = {
    name = "vnet_intranet_re1_TO_vnet_hub_ingress_re1"
    from = {
      vnet_key = "vnet_spoke_intranet_re1"
    }
    to = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_hub_ingress_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  vnet_hub_ingress_re1_TO_vnet_intranet_re1 = {
    name = "vnet_hub_ingress_re1_TO_vnet_intranet_re1"
    from = {
      # lz_key     = "dev_env_re1"
      output_key = "vnets"
      vnet_key   = "vnet_hub_ingress_re1"
    }
    to = {
      vnet_key = "vnet_spoke_intranet_re1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

  # # Optional - intranet vnet to internet vnet
  # vnet_internet_re1_TO_vnet_intranet_re1 = {
  #   name = "vnet_internet_re1_TO_vnet_intranet_re1"
  #   from = {
  #     vnet_key = "vnet_spoke_internet_re1"
  #   }
  #   to = {
  #     # lz_key     = "dev_env_re1"
  #     output_key = "vnets"
  #     vnet_key   = "vnet_spoke_intranet_re1"
  #   }
  #   allow_virtual_network_access = true
  #   allow_forwarded_traffic      = false
  #   allow_gateway_transit        = false
  #   use_remote_gateways          = false
  # }

  # vnet_intranet_re1_TO_vnet_internet_re1 = {
  #   name = "vnet_intranet_re1_TO_vnet_internet_re1"
  #   from = {
  #     # lz_key     = "dev_env_re1"
  #     output_key = "vnets"
  #     vnet_key   = "vnet_spoke_intranet_re1"
  #   }
  #   to = {
  #     vnet_key = "vnet_spoke_internet_re1"
  #   }
  #   allow_virtual_network_access = true
  #   allow_forwarded_traffic      = true
  #   allow_gateway_transit        = true
  #   use_remote_gateways          = false
  # }   

}