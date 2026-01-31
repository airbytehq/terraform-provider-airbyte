resource "airbyte_destination_motherduck" "my_destination_motherduck" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    destination_path      = "/local/destination.duckdb"
    motherduck_api_key    = "...my_motherduck_api_key..."
    schema                = "main"
  }
  definition_id = "18984774-790d-4855-9a53-7551c7e46710"
  name          = "...my_name..."
  workspace_id  = "8e9ecfac-b7be-4f50-9904-455663e76447"
}