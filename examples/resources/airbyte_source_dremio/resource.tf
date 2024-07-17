resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "4c195964-33e1-4d51-884a-ac586d055244"
  name          = "Floyd Hackett"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b457a2c2-618f-4e1b-91dc-ce8e649d7675"
}