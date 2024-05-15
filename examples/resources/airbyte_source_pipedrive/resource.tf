resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "25b29252-a784-4d2d-8f17-07475e2d6a49"
  name          = "Cassandra Bashirian"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d6a28c6-eefe-459b-b2db-22407ce310da"
}