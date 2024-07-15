resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "58122af6-a8ac-4655-b6a2-05f1e4d309ea"
  name          = "Mrs. Carole Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fbd8663-14ca-4ce0-af96-b833556f7e41"
}