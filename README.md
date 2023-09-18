# CAF Terraform for GCC - Lab

## Getting Started

Clone the repo to your laptop

Open the working folder in Visual Studio Code

(if required), install VSCode extension “Remote-Containers”

Note: reopen in container when prompt in VS code


## Lab 1 - Login to azure

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

## Lab 2 - Launchpad

Go to /tf/caf/gcc_starter/landingzone/configuration/level0/launchpad/README.md and follow the steps in the readme file.

## Lab 3 - Networking

Go to /tf/caf/gcc_starter/landingzone/configuration/level1/networking/README.md and follow the steps in the readme file.

## Lab 4 - Solution Accelerator

Go to /tf/caf/gcc_starter/landingzone/configuration/level2/vm_windows/Readme.md and follow the steps in the readme file.


## Lab 5 - Clean up 

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level4 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level2/vm_windows \
-parallelism 30 \
-env sandpit \
-tfstate solution_accelerators_vm_windows.tfstate \
-a destroy
```

```bash
rover -lz /tf/caf/landingzones/caf_solution \
-level level3 \
-var-folder /tf/caf/gcc_starter/landingzone/configuration/level1/networking_spoke_internet \
-env sandpit \
-tfstate networking_spoke_internet.tfstate \
-a destroy
```

```bash
rover -lz /tf/caf/landingzones/caf_launchpad \
  -launchpad \
  -var-folder /tf/caf/gcc_starter/landingzone/configuration/level0/launchpad \
  -parallelism 30 \
  -env sandpit \
  -a destroy
```


## Troubleshooting Tips
1. Unable to create KeyVault or there is existing keyvault name, then go to managed deleted vaults to ensure all deleted keyvaults are purge.
