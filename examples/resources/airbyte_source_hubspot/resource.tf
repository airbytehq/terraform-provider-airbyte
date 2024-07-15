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
  definition_id = "bbbdb311-964f-499d-a774-5afb65f1720b"
  name          = "Javier Murray"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1916264-7e68-40e4-817c-6f4b509c8206"
}