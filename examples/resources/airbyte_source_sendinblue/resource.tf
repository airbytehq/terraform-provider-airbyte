resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "sendinblue"
  }
  name         = "Willis Bechtelar"
  secret_id    = "...my_secretId..."
  workspace_id = "d421bd43-d1f0-4cb0-a000-3eb22d9b3a70"
}