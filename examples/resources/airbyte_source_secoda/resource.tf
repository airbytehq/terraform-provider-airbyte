resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e34c931e-7a72-4ef9-ae22-c4d080cde039"
  name          = "Marcos Hilll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5778ddd-1091-40de-87df-e701edbd0d10"
}