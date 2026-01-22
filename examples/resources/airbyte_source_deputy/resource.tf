resource "airbyte_source_deputy" "my_source_deputy" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "5867a7a3-cda1-42de-aa60-dea6430ea0d1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b619e756-5ed9-4666-8630-ba73d2960e3a"
}