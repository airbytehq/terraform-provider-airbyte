resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
  }
  definition_id = "2f8e75b9-5ee5-4dd1-9c77-a4e3aa4d1c74"
  name          = "Gregg Smitham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "939b8b6b-2c09-420a-a8be-08607521b21e"
}