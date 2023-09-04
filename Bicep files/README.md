Command used to provision apps in the regions
`az deployment group create --resource-group "e2e-test-apps" --template-file .\main.bicep --parameters .\deployParams.bicepparam`

Command used to provision app service plans
`az deployment group create --resource-group "e2e-test-apps" --template-file .\deployASP.bicep --parameters .\deployASPparams.bicepparam`

To test a Custom Kudu image,
update the parameter `customKuduImage` in the file `deployParams.bicepparam`
uncomment the appsettings in the `deployApp.bicep`

To add more regions, update the locations in the `Bicep files\deployASPparams.bicepparam`.
To add more frameworks, add the framework and corresponsing LinuxFx version in the `Bicep files\deployApp.bicep`