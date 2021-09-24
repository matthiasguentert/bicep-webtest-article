var name = 'demo-url-ping-web-test'
var rg = 'rg-article'
var subscriptionId = 'ade29918-737f-497e-8808-4bffda5cc46d'
var appInsightsName = 'appi-demo'

var id = guid('seed')
var timeout = 120
var frequency = 300
var guidId = guid('seed')
var method = 'GET'
var url = 'https://www.azureblue.io'
var expectedHttpStatusCode = 200
var version = '1.1'
var followRedirects = 'True'
var recordResults = 'True'
var cache = 'False'
var parseDependentRequests = 'False'
var ignoreHttpStatusCode = 'False'

resource urlPingWebTest 'Microsoft.Insights/webtests@2015-05-01' = {
  name: name
  location: 'westeurope'
  tags: {
    'hidden-link:/subscriptions/${subscriptionId}/resourceGroups/${rg}/providers/microsoft.insights/components/${appInsightsName}': 'Resource'
  }
  kind: 'ping'
  properties: {
    SyntheticMonitorId: '${name}-id'
    Name: name
    Enabled: true
    Frequency: frequency
    Timeout: timeout
    Kind: 'ping'
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
    Configuration: {
      WebTest: '<WebTest xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Name="${name}" Id="${id}" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="${timeout}" WorkItemIds="" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale=""> <Items> <Request Method="${method}" Guid="${guidId}" Version="${version}" Url="${url}" ThinkTime="0" Timeout="${timeout}" ParseDependentRequests="${parseDependentRequests}" FollowRedirects="${followRedirects}" RecordResult="${recordResults}" Cache="${cache}" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="${expectedHttpStatusCode}" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="${ignoreHttpStatusCode}" /> </Items> </WebTest>'
    }
  }
}
