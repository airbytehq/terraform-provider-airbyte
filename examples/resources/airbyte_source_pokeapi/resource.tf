resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "snorlax"
  }
  definition_id = "4005a630-7276-4c58-b5da-21f73986a71e"
  name          = "Stuart Corwin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b81056bc-977a-43bf-8dff-8dd835d80427"
}