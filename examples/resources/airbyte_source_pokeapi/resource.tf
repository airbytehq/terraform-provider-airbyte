resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "luxray"
  }
  name         = "Dean Gutkowski"
  secret_id    = "...my_secret_id..."
  workspace_id = "c369f9cb-0a3d-4d00-87da-ef770c81f95c"
}