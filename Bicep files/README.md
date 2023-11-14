### Workflows Daily runs
- Currently there are automated runs configured in this repo which deploy apps with frameworks `node-16, node-18, dotnet-7, php-8` daily in 6 regions, one from each stage.
- So, we have a total 24 automated runs running daily to test the basic deployment of the apps in all 6 stages.
- These runs can be seen from [here](https://github.com/linux-web-apps/e2e-test-samples/actions).
- Automated runs run every day at 2pm IST.

### About repo
- In this Github repo, the apps used for deploying various frameworks are present in branches corresponding to the framework - version.
    - **Ex:** The dotnet-7.0 app used for deploying the dotnet apps is present in the branch dotnet-7.0
- In the `.github/workflows` folder there are workflows to test the deployment via github actions daily which run automatically. 
- There are workflows which start with `manual` which are used for testing custom script or workflow manually.

### Automated Provisioning of Apps
- Command used to provision apps in the regions
`az deployment group create --resource-group "e2e-test-apps" --template-file .\main.bicep --parameters .\deployParams.bicepparam`
- Command used to provision app service plans
`az deployment group create --resource-group "e2e-test-apps" --template-file .\deployASP.bicep --parameters .\deployASPparams.bicepparam`
- To add more regions, update the locations in the `Bicep files\deployASPparams.bicepparam`.
- To add more frameworks, add the framework and corresponsing LinuxFx version in the `Bicep files\deployApp.bicep`

### CustomKudu Image
- To test a Custom Kudu image,
    - update the parameter `customKuduImage` with the value of the customKudu Image(Example: kudulite_buster|appsvc/kudulite:buster_20230530.1) in the file `deployParams.bicepparam`
    - uncomment the appsettings in the `deployApp.bicep`
    - Deploy the apps again using the command 
`az deployment group create --resource-group "e2e-test-apps" --template-file .\main.bicep --parameters .\deployParams.bicepparam`

