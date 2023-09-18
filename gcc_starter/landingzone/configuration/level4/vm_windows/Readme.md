

## Pre-requisites

login account must be the owner of the subscription when creating the level4

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


## Lab 4
Replace resource group name and vnet name in file 
/tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows/vm.tfvars


1. Copy example "101-single-windows-vm" from aztfmod/examples folder to level4/vm_windows

```bash
cp /tf/caf/landingzones/aztfmod/examples/compute/virtual_machine/101-single-windows-vm/configuration.tfvars /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows/vm.tfvars
```

Open file in VS code
/tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows/vm.tfvars


2. Comment line 85 and line 86

        # vnet_key                = "vnet_region1"
        # subnet_key              = "example"

3. Add vnet_key, subnet_key and lz_key at line 87 as shown below

        lz_key                  = "netowrking" # vnet and subnet in a remote landing zone        
        vnet_key                = "vnet_spoke_internet_re1" # "vnet_region1"
        subnet_key              = "app" # "example"


4. Comment line 106-122 vnets configuration - since it is created in level 3 networking

# vnets = {
#   vnet_region1 = {
#     resource_group_key = "vm_region1"
#     vnet = {
#       name          = "virtual_machines"
#       address_space = ["10.100.100.0/24"]
#     }
#     specialsubnets = {}
#     subnets = {
#       example = {
#         name = "examples"
#         cidr = ["10.100.100.0/29"]
#       }
#     }

#   }
# }

5. Comment line 2-7 global setting - since it is in level 0 launchpad

# global_settings = {
#   default_region = "region1"
#   regions = {
#     region1 = "australiaeast"
#   }
# }

## Deployment

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a plan
```

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a apply
```

# End of lab 4

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level4/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a destroy
```
