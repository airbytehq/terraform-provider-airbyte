resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    destination_path      = "/local/destination.duckdb"
    motherduck_api_key    = "...my_motherduck_api_key..."
    schema                = "main"
  }
  definition_id = "94bd199c-2ff0-4aa2-b98e-17f0acb72610"
  name          = "...my_name..."
  workspace_id  = "878710f8-90aa-4e37-8e01-c0cce0824fd2"
}