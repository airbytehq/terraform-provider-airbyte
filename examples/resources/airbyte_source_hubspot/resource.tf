resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      o_auth = {
        client_id     = "123456789000"
        client_secret = "secret"
        refresh_token = "refresh_token"
      }
    }
    enable_experimental_streams = false
    start_date                  = "2017-01-25T00:00:00Z"
  }
  definition_id = "56253a66-e5ad-4391-9293-14c65ed70eb1"
  name          = "Myra Reinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c24002ca-0d01-4711-b25a-28dde04a9ce3"
}