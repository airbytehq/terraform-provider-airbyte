resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "/local/destination.duckdb"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "955e96a5-34d1-40de-93d5-ac72942da8bd"
  name          = "...my_name..."
  workspace_id  = "878710f8-90aa-4e37-8e01-c0cce0824fd2"
}