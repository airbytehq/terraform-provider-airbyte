resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-01-26"
    url                   = "...my_url..."
  }
  definition_id = "a2f148c3-3358-47ca-9b91-0c33376dae7a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c0f377ae-fdbc-457d-b28d-f51ddd3ff681"
}