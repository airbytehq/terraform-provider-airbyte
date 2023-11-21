resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  definition_id = "135dc90f-6379-44a9-bd5a-cf56253a66e5"
  name          = "Clint Douglas V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "29314c65-ed70-4eb1-bcb4-fc24002ca0d0"
}