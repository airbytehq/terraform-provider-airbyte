resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "luxray"
  }
  definition_id = "e2388fd0-120f-462c-91a2-676b4d9282ad"
  name          = "Ramona Stiedemann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5253fa0-2ef0-408f-918d-81572f724d1e"
}