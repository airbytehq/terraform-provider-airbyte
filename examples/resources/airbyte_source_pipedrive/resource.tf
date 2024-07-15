resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "70c28b27-8d25-4e4e-a4a5-1abe7bbe4e8d"
  name          = "Derrick Wehner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7ba5cf8d-b48a-42cc-8047-b120c3ecc155"
}