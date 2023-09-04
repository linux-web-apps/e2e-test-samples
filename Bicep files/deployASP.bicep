param sku string // The SKU of App Service Plan
param asp string
param locations array

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = [for location in locations: {
  name: '${asp}-${location}'
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
  kind: 'linux'
}]
