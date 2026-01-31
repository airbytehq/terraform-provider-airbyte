resource "airbyte_source_merge" "my_source_merge" {
  configuration = {
    account_token         = "...my_account_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    start_date            = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "3707290e-d9d9-45e5-afe8-9df8eeb930e6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "58b9efcf-b82f-4cd5-91b9-322dc2d51997"
}