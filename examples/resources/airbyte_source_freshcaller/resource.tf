resource "airbyte_source_freshcaller" "my_source_freshcaller" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    domain                = "snaptravel"
    requests_per_minute   = 5
    start_date            = "2022-01-01T12:00:00Z"
    sync_lag_minutes      = 8
  }
  definition_id = "8a5d48f6-03bb-4038-a942-a8d3f175cca3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "29ab7204-6411-4939-bbb7-9dd52dfdaf8e"
}