using 'main.bicep'

param webApp = 'lwa-sample'
param customKuduImage = 'kudulite_buster|appsvc/kudulite:buster_20230530.1'
param locations = [
  'eastus2euap' // stage - 0
  'francecentral' // stage - 1
  'westus2' // stage - 2
  'eastus' // stage - 3
  'southeastasia' // stage - 4
  'westeurope'  // stage - 5
]
