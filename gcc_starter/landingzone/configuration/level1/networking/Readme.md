
## Pre-requisites

login account must be the owner of the subscription when creating the level3

## (Optional) Login to azure

1. Open zsh terminal

2. To sign in, type the below command in the terminal
```bash
rover login
```
To sign in, use a web browser to open the page https://microsoft.com/devicelogin and enter the code to authenticate.

3. (Optional) To set to a specific subscription, execute the below command
```bash
az account set --subscription [your subscription id] 
```


## Lab 3
Open file in VS code

1. Add a project virtual network and subnets to line 14 in the file
/tf/caf/gcc_starter/landingzone/configuration/level3/networking/networking.tfvars

```bash
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
        nsg_key = "web"
      }
      app = {
        name    = "app-layer"
        cidr    = ["172.16.1.0/24"]
        nsg_key = "app"
      }
      data = {
        name    = "data-layer"
        cidr    = ["172.16.2.0/24"]
        nsg_key = "data"
      }
    }    
  }
```

1. Add a peering from ingress vnet to project vnet at line 4 in the file
/tf/caf/gcc_starter/landingzone/configuration/level3/networking/peerings.tfvars

```bash
  vnet_internet_re1_TO_vnet_hub_ingress_re1 = {
    name = "vnet_internet_re1_TO_vnet_hub_ingress_re1"
    from = {
      vnet_key = "vnet_spoke_internet_re1"
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
```

## Deployment

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level1 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level1/networking \
-env sandpit \
-tfstate networking.tfstate \
-a plan
```

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level1 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level1/networking \
-env sandpit \
-tfstate networking.tfstate \
-a apply 
```

# Next step
# Goto README.md at /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows/Readme.md

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level1 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level1/networking \
-env sandpit \
-tfstate networking.tfstate \
-a destroy
```
