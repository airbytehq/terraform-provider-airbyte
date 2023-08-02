resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
    source_type  = "pokeapi"
  }
  name         = "Lamar Lesch PhD"
  secret_id    = "...my_secretId..."
  workspace_id = "3c5a1f9c-242c-47b6-aa1f-30c73df5b671"
}