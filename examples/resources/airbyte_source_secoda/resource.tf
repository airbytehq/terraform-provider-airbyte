resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "secoda"
  }
  name         = "Brett Leannon I"
  secret_id    = "...my_secret_id..."
  workspace_id = "ad421bd4-3d1f-40cb-8a00-03eb22d9b3a7"
}