resource "airbyte_source_xsolla" "my_source_xsolla" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = 2.42
  }
  definition_id = "45d82f42-0e67-47a1-9b7b-c33d9509b590"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd2b0536-05cb-45b4-99ed-aecfd0a3f587"
}