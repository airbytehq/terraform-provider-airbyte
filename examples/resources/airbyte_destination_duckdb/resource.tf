resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "motherduck:"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "b1eeca9f-91eb-458c-b325-7456993f0626"
  name          = "Tom Kertzmann PhD"
  workspace_id  = "1987ed52-cbff-4018-9893-5bdfe2750539"
}