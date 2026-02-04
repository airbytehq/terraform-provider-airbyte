resource "airbyte_source_airbyte_customer_io_source" "my_source_airbytecustomeriosource" {
  configuration = {
    app_api_key = "...my_app_api_key..."
  }
  definition_id = "40f40dfe-263e-4c94-9a38-abfa21fd8a8d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "72693596-0727-448c-b487-dbc1aa37719b"
}