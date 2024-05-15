resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "7876fcad-615b-4cac-a687-b3371066986a"
  name          = "Dr. Maryann Armstrong"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25c7727b-3635-4428-9d3e-7f0bc649fe5b"
}