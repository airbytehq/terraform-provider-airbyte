resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    authorization = {
      api_token = "...my_api_token..."
    }
    replication_start_date = "2017-01-25T00:00:00Z"
  }
  name         = "Sophia Kerluke III"
  secret_id    = "...my_secret_id..."
  workspace_id = "be306a4e-8399-4441-ba7c-75d4c70b5882"
}