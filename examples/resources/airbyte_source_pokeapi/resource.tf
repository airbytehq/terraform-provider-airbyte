resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    pokemon_name          = "ditto"
  }
  definition_id = "d70c496a-3c60-4de8-a404-9671a974b6e9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1787f1e-349d-462f-be68-a71a18668a12"
}