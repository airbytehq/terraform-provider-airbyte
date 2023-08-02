resource "airbyte_source_chartmogul" "my_source_chartmogul" {
  configuration = {
    api_key     = "...my_api_key..."
    interval    = "month"
    source_type = "chartmogul"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Louis Treutel V"
  secret_id    = "...my_secretId..."
  workspace_id = "ff8f0f81-6ff3-4477-813e-902c14125b09"
}