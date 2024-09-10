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
  definition_id = "3df11978-b385-4957-a3c9-21cc9284a211"
  name          = "Annette Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "910609be-9a98-44e4-b07b-caf13ed5606a"
}