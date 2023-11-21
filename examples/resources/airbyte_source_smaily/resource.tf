resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "0bc649fe-5b08-4c82-9c40-ca1ab7663971"
  name          = "Ebony Carroll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "331df025-a154-4586-87cd-fb558f87809d"
}