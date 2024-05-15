resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "/local/destination.duckdb"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "db1eeca9-f91e-4b58-8332-57456993f062"
  name          = "Carole Hackett"
  workspace_id  = "0d1987ed-52cb-4ff0-9858-935bdfe27505"
}