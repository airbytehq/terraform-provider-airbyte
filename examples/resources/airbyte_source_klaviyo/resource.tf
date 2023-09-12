resource "airbyte_source_klaviyo" "my_source_klaviyo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "klaviyo"
    start_date  = "2017-01-25T00:00:00Z"
  }
  name         = "Charlotte Muller"
  secret_id    = "...my_secret_id..."
  workspace_id = "0e123b78-47ec-459e-9f67-f3c4cce4b6d7"
}