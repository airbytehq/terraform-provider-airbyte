resource "airbyte_source_pokeapi" "my_source_pokeapi" {
  configuration = {
    pokemon_name = "ditto"
  }
  definition_id = "20f62c51-a267-46b4-9928-2ad19d25d525"
  name          = "Mr. Shari O'Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f008f118-d815-472f-b24d-1e0e7e708b9f"
}