resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "secoda"
  }
  name         = "Ignacio Sporer"
  secret_id    = "...my_secret_id..."
  workspace_id = "050d38dc-3ce1-4854-b2f9-ee69166a8be3"
}