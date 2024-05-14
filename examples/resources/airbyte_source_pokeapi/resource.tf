resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "ditto"
  }
  definition_id = "3150acfe-c241-4f73-a46e-1c879583a59a"
  name          = "Alan Hessel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10140178-456a-44c1-973d-e2c277a8e238"
}