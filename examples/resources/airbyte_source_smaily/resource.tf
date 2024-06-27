resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "b7a8364f-95e8-44ef-b6a9-353261882dc6"
  name          = "Hubert Dickens"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2f3a674-4848-4ac2-b04b-eae9e1753040"
}