using 'deployASP.bicep'

param sku = 'B3'
param asp = 'e2e-test-apps'

param locations = [
  'eastus2euap' // stage - 0
  'francecentral' // stage - 1
  'westus2' // stage - 2
  'eastus' // stage - 3
  'southeastasia' // stage - 4
  'westeurope'  // stage - 5
]
