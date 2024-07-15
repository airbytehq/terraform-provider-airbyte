resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "ditto"
  }
  definition_id = "1b21ea9b-c9d1-4c88-b1ee-12f8a7db098a"
  name          = "Lucille Blanda"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a87d389-094e-4fa6-bbbe-a9f5a35d1bd0"
}