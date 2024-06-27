resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 4
  }
  definition_id = "1dc53f64-148a-4cb8-b41d-5bf94a01397d"
  name          = "Muriel Wunsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0aff6604-97cb-4974-a7d8-001cbe4b7daa"
}