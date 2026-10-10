resource "azapi_resource" "expressRouteCircuit" {
  type      = "Microsoft.Network/expressRouteCircuits@2020-11-01"
  parent_id = "The ID of `Microsoft.Resources/resourceGroups`"
  name      = "name"
  location  = "location"
  body = {
    sku = {
      family = "MeteredData"
      tier   = "Local"
      name   = "Local_MeteredData"
    }
    properties = {
      serviceProviderProperties = {
        bandwidthInMbps     = 50
        peeringLocation     = "Amsterdam"
        serviceProviderName = "Telia Carrier"
      }
      allowClassicOperations = true
    }
  }
}

