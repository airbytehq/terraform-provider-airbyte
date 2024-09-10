resource "airbyte_source_clazar" "my_source_clazar" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
  }
  definition_id = "3ab4d447-55b9-410e-9c99-9e89cbd0e8f2"
  name          = "Vincent Kshlerin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1fbec883-da2f-4ecd-acab-29e0bc6002c3"
}