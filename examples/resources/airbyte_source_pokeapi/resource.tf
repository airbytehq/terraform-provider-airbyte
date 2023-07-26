resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "luxray"
    source_type  = "pokeapi"
  }
  name         = "Stacey Fritsch"
  workspace_id = "f6d0c6d6-ed9c-473d-9634-571509a8e870"
}