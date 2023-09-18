vnets = {

  # ingress/egress vnet - ingress/egress zone (dmz zone)
  vnet_hub_ingress_re1 = { 
    resource_group_key = "networking_hub_re1"
    region             = "region1"
    vnet = {
      name          = "hub-ingress-re1"
      address_space = ["172.17.0.0/22"]
    }
  }

  # project vnet - internet zone
  # [TODO: add a project vnet and subnets here]
  vnet_spoke_internet_re1 = { 
    resource_group_key = "networking_spoke_re1"
    region             = "region1"
    vnet = {
      name          = "spoke-internet-re1"
      address_space = ["172.16.0.0/20"]
    }
    specialsubnets = {}
    subnets = {
      web = {
        name    = "web-layer"
        cidr    = ["172.16.0.0/24"]
        nsg_key = "web_nsg"
      }
      app = {
        name    = "app-layer"
        cidr    = ["172.16.1.0/24"]
        nsg_key = "app_nsg"
      }
      data = {
        name    = "data-layer"
        cidr    = ["172.16.2.0/24"]
        nsg_key = "data_nsg"
      }
    }    
  }

  # project vnet - intranet zone
  vnet_spoke_intranet_re1 = { 
    resource_group_key = "networking_spoke_re1"
    region             = "region1"
    vnet = {
      name          = "spoke-intranet-re1"
      address_space = ["10.0.0.0/20"]
    }
  }

  # management vnet - management zone
  vnet_hub_management_re1 = { 
    resource_group_key = "networking_spoke_re1"
    region             = "region1"
    vnet = {
      name          = "spoke-management-re1"
      address_space = ["100.64.0.0/22"]
    }
  }

  # devops vnet - devops zone
  vnet_spoke_devops_re1 = { 
    resource_group_key = "networking_spoke_re1"
    region             = "region1"
    vnet = {
      name          = "spoke-devops-re1"
      address_space = ["100.65.0.0/20"]
    }
  }  

}
