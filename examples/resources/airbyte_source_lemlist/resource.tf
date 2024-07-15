resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "5c663b6d-13c6-4e3b-bb93-bd413d75c669"
  name          = "Molly Huels"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ef16650-e4c3-4120-977a-566ac796fdac"
}