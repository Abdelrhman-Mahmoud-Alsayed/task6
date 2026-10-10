resource "azapi_resource" "vpnVnetConnection" {
  type  = "Microsoft.Network/connections@2020-11-01"
  parent_id = "The ID of `Microsoft.Resources/resourceGroups`"
  name  = "name"
  location  = "location"
  body = {
    properties = {
      virtualNetworkGateway1 = {
        id = "virtualNetworkGateways.id"
        properties = {}
      }
      localNetworkGateway2 = {
        id = "localNetworkGateways.id"
        properties = {}
      }
      connectionType = "IPsec"
      routingWeight = 0
      sharedKey = "sharedkey"
    }
  }
}
