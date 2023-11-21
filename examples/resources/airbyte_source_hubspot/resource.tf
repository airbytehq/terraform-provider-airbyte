resource "airbyte_source_hubspot" "my_source_hubspot" {
  configuration = {
    credentials = {
      source_hubspot_o_auth = {
        client_id     = "123456789000"
        client_secret = "secret"
        refresh_token = "refresh_token"
      }
    }
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "b1210837-28d8-49e3-91e8-68df1f2c5ad8"
  name          = "Amelia Gulgowski II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3eb240d6-26d4-4887-8caa-f58e0f5c1159"
}