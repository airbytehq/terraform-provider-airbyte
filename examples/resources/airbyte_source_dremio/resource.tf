resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "09edcef2-c435-47e7-ab14-9e6fe9a76bd2"
  name          = "Mildred Sipes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a77e51b-04b8-4d52-a6bc-1e22381cdc2e"
}