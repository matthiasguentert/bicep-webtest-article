resource standardWebTest 'Microsoft.Insights/webtests@2018-05-01-preview' = {
  name: 'demo-webtest'
  location: 'westeurope'
  tags: {
    'hidden-link:/subscriptions/ade29918-737f-497e-8808-4bffda5cc46d/resourceGroups/rg-article/providers/microsoft.insights/components/appi-demo': 'Resource'
  }
  kind: 'standard'
  properties: {
    SyntheticMonitorId: 'demo-webtest-id'
    Name: 'demo-webtest'
    Description: null
    Enabled: true
    Frequency: 300
    Timeout: 120 
    Kind: 'standard'
    RetryEnabled: true
    Locations: [
      {
        Id: 'emea-nl-ams-azr'
      }
      {
        Id: 'emea-ru-msa-edge'
      }
      {
        Id: 'apac-hk-hkn-azr'
      }
      {
        Id: 'latam-br-gru-edge'
      }
      {
        Id: 'emea-au-syd-edge'
      }
    ]
    Configuration: null
    Request: {
      RequestUrl: 'https://www.azureblue.io'
      Headers: null
      HttpVerb: 'GET'
      RequestBody: null
      ParseDependentRequests: false
      FollowRedirects: null
    }
    ValidationRules: {
      ExpectedHttpStatusCode: 200
      IgnoreHttpsStatusCode: false
      ContentValidation: null
      SSLCheck: true
      SSLCertRemainingLifetimeCheck: 7
    }
  }
}

