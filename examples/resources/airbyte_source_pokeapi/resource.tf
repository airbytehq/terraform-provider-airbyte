resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    pokemon_name          = "ditto"
  }
  definition_id = "6371b14b-bc68-4236-bfbd-468e8df8e968"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1787f1e-349d-462f-be68-a71a18668a12"
}