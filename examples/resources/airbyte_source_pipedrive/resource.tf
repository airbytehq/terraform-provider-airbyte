resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    num_workers            = 20
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "cd6a105b-fe90-4389-8c90-c65a961a65fa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "09d58107-79a7-4e46-8d32-f0e8063bd034"
}