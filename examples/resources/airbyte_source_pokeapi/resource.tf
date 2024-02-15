resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
  }
  definition_id = "8a7db098-a741-4266-a87d-389094efa67b"
  name          = "Erick Nikolaus"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a35d1bd-0fb6-4321-b6b4-ca6472a5f8ae"
}