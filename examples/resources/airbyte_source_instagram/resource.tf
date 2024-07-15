resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "91630fd2-f131-4d4f-bef2-53f33ac135dc"
  name          = "Kevin Weissnat"
  secret_id     = "...my_secret_id..."
  workspace_id  = "794a97d5-acf5-4625-ba66-e5ad39192931"
}