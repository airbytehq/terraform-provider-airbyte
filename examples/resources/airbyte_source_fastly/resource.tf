resource "airbyte_source_fastly" "my_source_fastly" {
  configuration = {
    fastly_api_token = "...my_fastly_api_token..."
    start_date       = "2022-10-21T15:51:21.305Z"
  }
  definition_id = "58d9016f-61f7-43a7-9893-40ee2ebb60b3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "692d1a68-ef64-4e22-a0f9-b6e04c83f1b1"
}