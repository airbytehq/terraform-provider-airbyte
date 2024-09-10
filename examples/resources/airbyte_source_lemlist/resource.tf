resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "adc1330e-f574-4883-95b5-ae0423a6249a"
  name          = "Gloria Green"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5fa2ea25-a51d-4762-ae38-9cc4200a4abb"
}