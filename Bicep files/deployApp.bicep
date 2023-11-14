param webApp string // The web app name
param location string
param serverFarmName string
param customKuduImage string // The custom Kudu image to use

// Reference for these frameworks - https://msazure.visualstudio.com/DefaultCollection/Antares/_git/AAPT-Antares-Linux-ImageBuilder-v2?path=%2FREADME.md&version=GBmain&_a=preview
var frameworks = {
  'node-16':'NODE|16-lts' // not deploying node 12, 14 because the support ended for them
  'node-18':'NODE|18-lts'
  'dotnet-6':'DOTNETCORE|6.0'
  'dotnet-7':'DOTNETCORE|7.0'
  'python-3-8':'PYTHON|3.8'
  'python-3-9':'PYTHON|3.9'
  'python-3-10':'PYTHON|3.10'
  'php-8-0':'PHP|8.0'
  'php-8-1':'PHP|8.1'
  'php-8-2':'PHP|8.2'
}

resource appService 'Microsoft.Web/sites@2020-06-01' = [for framework in items(frameworks): {
  name: '${webApp}-${framework.key}-${location}'
  location: location
  properties: {
    serverFarmId: serverFarmName
    siteConfig: {
      linuxFxVersion: framework.value
      // appSettings: [
      //   {
      //     name: 'WEBSITE_PIN_SYSTEM_IMAGES'
      //     value: customKuduImage // Ex: kudulite_buster|appsvc/kudulite:buster_20230530.1
      //   }
      // ]
    }
  }
}]
