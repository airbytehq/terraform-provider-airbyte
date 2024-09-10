resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "7c53022b-a4ae-4d29-95c6-63b6d13c6e3b"
  name          = "Pete McDermott"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d413d75c-6693-4a6b-92ef-16650e4c3120"
}