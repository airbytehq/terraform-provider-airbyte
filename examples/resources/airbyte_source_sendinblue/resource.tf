resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "0de87dfe-701e-4dbd-8d10-cf57eb672b8a"
  name          = "Derek Heller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3fb2a63d-a091-47a6-951f-ac3e8ec69bab"
}