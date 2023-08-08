resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "secoda"
  }
  name         = "Jason O'Kon"
  secret_id    = "...my_secret_id..."
  workspace_id = "42c1aa01-0e9a-4ac2-a913-5586d18f9f97"
}