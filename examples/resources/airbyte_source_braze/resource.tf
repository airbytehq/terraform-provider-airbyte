resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-01-26"
    url                   = "...my_url..."
  }
  definition_id = "68b9c98e-0747-4c84-b05b-d30b47686725"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0f377ae-fdbc-457d-b28d-f51ddd3ff681"
}