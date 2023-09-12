resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
    source_type  = "pokeapi"
  }
  name         = "Jeremiah Hahn"
  secret_id    = "...my_secret_id..."
  workspace_id = "aa2b2411-3695-4d1e-a698-fcc4596217c2"
}