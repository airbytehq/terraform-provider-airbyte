resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "luxray"
  }
  definition_id = "fcf99c41-876f-4a0c-bc1b-99ee1e960566"
  name          = "Dr. Beatrice Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1b3114e9-ed57-4541-8361-2b0e8c8cf11a"
}