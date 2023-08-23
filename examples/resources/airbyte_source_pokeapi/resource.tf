resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
    source_type  = "pokeapi"
  }
  name         = "Lynn Mertz"
  secret_id    = "...my_secret_id..."
  workspace_id = "17c29776-7633-4425-8038-bfb5971e9819"
}