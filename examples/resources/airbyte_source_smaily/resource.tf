resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "3d1fcf2b-6755-4110-90ec-6c18f2017e88"
  name          = "Neil Pagac"
  secret_id     = "...my_secret_id..."
  workspace_id  = "64f95e84-efb6-4a93-9326-1882dc6ea377"
}