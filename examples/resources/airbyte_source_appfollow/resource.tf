resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "def9a90f-a7f8-4f44-9b58-dfc559a0bee1"
  name          = "Maurice Wilderman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "23389204-2261-4684-a73e-f602c915f597"
}