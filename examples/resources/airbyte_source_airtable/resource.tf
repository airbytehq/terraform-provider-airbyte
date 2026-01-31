resource "airbyte_source_airtable" "my_source_airtable" {
  configuration = {
    add_base_id_to_stream_name = false
    additional_properties      = "{ \"see\": \"documentation\" }"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-01-14T11:50:58.504Z"
      }
    }
    num_workers = 37
  }
  definition_id = "fdd0b7d7-bc62-4e45-9809-2513b5f90d61"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "110737e7-1846-4cca-8ebc-d0f82e4b8ffb"
}