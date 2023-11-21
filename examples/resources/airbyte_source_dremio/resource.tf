resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "209caa59-3eb8-408e-88c0-a1f11671a56d"
  name          = "Jeanne Lebsack"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b5e4c195-9643-43e1-9514-84aac586d055"
}