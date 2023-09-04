# e2e-test-samples
This repo contains sample apps for all the frameowrks and versions supported in Linux web apps.

Each branch contains a specific framework and version.

For each framework and version we have that app deployed in multiple regions. There will be a branch like 
'node-16' which will be deployed in many regions. There are multiple workflows running for the same app in multiple regions.

Sample dotnet7 apps and the corresponding ASPs according to stages

| Region | Stage | AppName | App Service Plan Name |
|----------|----------|----------| ---------------- |

| EastUS2EUAP(stage) | stage 0 | lwa-sample-dotnet-7-eastus2euap | e2e-test-apps-eastus2euap (B3: 1) |  
| France Central | stage 1 | lwa-sample-dotnet-7-francecentral | e2e-test-apps-francecentral (B3: 1) |  
| West US 2 | stage 2 | lwa-sample-dotnet-7-westus2 | e2e-test-apps-westus2 |  
| East US | stage 3 | lwa-sample-dotnet-7-eastus | e2e-test-apps-eastus |  
| Southeast Asia | stage 4 | lwa-sample-dotnet-7-southeastasia | e2e-test-apps-southeastasia |  
| West Europe | stage 5 | lwa-sample-dotnet-7-westeurope | e2e-test-apps-westeurope |  
