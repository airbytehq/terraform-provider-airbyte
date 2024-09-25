resource "airbyte_destination_duckdb" "my_destination_duckdb" {
  configuration = {
    destination_path   = "motherduck:"
    motherduck_api_key = "...my_motherduck_api_key..."
    schema             = "main"
  }
  definition_id = "07129d46-44f9-4dd3-954c-7cfb82ef1e01"
  name          = "Emmett Herzog"
  workspace_id  = "77c9e2c8-5c90-44a2-83ff-157a47112db1"
}