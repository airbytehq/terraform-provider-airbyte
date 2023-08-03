resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key     = "...my_api_key..."
    interval    = "week"
    source_type = "chartmogul"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Miss Carroll Rutherford"
  workspace_id = "600dec00-1ac8-402e-aec0-9ff8f0f816ff"
}