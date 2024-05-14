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
  definition_id = "4734e30b-46b9-459e-8e75-8ac09227119b"
  name          = "Jorge Prosacco DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98bb7037-ab55-461c-a1bb-1cadaa0e328a"
}