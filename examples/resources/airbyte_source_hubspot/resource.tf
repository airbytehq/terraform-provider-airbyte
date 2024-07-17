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
  definition_id = "887ccaaf-58e0-4f5c-9159-d60149910eec"
  name          = "Leland Kshlerin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "84ec6040-57d0-4451-918d-b5cccbbbdb31"
}