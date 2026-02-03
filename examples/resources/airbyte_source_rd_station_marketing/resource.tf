resource "airbyte_source_rd_station_marketing" "my_source_rdstationmarketing" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    authorization = {
      sign_in_via_rd_station_o_auth = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    start_date = "2017-01-25T00:00:00Z"
  }
  definition_id = "cfcc1d3b-9e53-4c77-b1a3-15536cddcc21"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "145cc270-17ae-443b-9b3f-eeb29d3f1317"
}