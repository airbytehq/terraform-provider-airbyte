resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "a21f7398-6a71-4e99-ac2b-81056bc977a3"
  name          = "Cary Graham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f8dd835d-8042-47d2-ba4e-1d8c723c8e5e"
}