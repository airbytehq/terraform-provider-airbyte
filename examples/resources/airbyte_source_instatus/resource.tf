resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "84a46153-eb24-40d6-a6d4-887ccaaf58e0"
  name          = "Mr. Lloyd Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9d601499-10ee-4cfc-bf38-4ec604057d04"
}