resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-06-28T02:11:16.821Z"
      }
    }
  }
  definition_id = "d15373da-8d6e-4ef0-8757-630ddbc2dbf1"
  name          = "Max Schuster"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bd57111a-c61d-4ffa-a9fe-7143a3e9a244"
}