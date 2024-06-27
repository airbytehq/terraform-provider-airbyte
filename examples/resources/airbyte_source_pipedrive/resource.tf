resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "d9282ad1-9d25-4d52-93fa-02ef008f118d"
  name          = "Peter Hilll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f724d1e0-e7e7-408b-9f81-5bf9f1370c28"
}