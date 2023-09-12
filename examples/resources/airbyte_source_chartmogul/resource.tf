resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key     = "...my_api_key..."
    interval    = "week"
    source_type = "chartmogul"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Neal Gorczany"
  secret_id    = "...my_secret_id..."
  workspace_id = "06a8aa94-c026-444c-b5e9-d9a4578adc1a"
}