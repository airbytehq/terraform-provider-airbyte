resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Hazel Blick V"
  secret_id    = "...my_secret_id..."
  workspace_id = "ce4fe165-bc48-440e-bfb5-df25477f370b"
}