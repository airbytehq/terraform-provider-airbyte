resource "airbyte_source_apptivo" "my_source_apptivo" {
  configuration = {
    access_key = "...my_access_key..."
    api_key    = "...my_api_key..."
  }
  definition_id = "931a913e-78ef-4c22-9115-9d8a90d023d2"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "17491f6c-19f6-48da-adaa-0aa07c2f36e7"
}