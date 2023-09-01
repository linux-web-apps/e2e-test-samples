param webApp string // The web app name
param locations array
param customKuduImage string

module deployApp 'deployApp.bicep' = [for location in locations: {
  name: 'webappDeployment${location}'
  params: {
    webApp: webApp
    location: location
    customKuduImage: customKuduImage
    serverFarmName: '/subscriptions/bef29afb-3c08-4894-ae64-43bdd8f3f447/resourceGroups/e2e-test-apps/providers/Microsoft.Web/serverfarms/e2e-test-apps-${location}'
  }
}]
