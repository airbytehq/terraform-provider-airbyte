resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "motherduck:"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "9f91eb58-c332-4574-9699-3f062684640d"
  name          = "Bobbie Lang"
  workspace_id  = "d52cbff0-1858-4935-bdfe-2750539f4b80"
}