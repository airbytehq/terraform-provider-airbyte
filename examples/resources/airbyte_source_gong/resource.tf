resource "airbyte_source_gong" "my_source_gong" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_via_gong_o_auth = {
        access_token          = "...my_access_token..."
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
        refresh_token         = "...my_refresh_token..."
        token_expiry_date     = "2022-12-01T08:33:01.202Z"
      }
    }
    start_date = "2018-02-18T08:00:00Z"
  }
  definition_id = "0b702d4e-9a91-4582-b5bf-1ff51cd4b92d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "66fc102e-2c63-4350-beb2-94c7945f2740"
}