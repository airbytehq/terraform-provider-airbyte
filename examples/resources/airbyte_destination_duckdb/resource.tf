resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "/local/destination.duckdb"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "457da65e-d465-4e75-8afd-2ad38ed7ed0e"
  name          = "Raquel Cole Sr."
  workspace_id  = "dc7d0e4e-5095-4ed9-8b4e-cb397d064562"
}