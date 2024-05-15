resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "5ec46f2b-ce2e-477b-bcce-f588ac548be8"
  name          = "Ted O'Conner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bf52c792-93e2-48aa-8190-3348b38fe3b5"
}