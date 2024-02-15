resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
  }
  definition_id = "c9df1af8-f501-43d5-90cf-403b2856e98a"
  name          = "Dr. Geneva Hickle Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "07e33047-d953-458a-9681-9d2abec21d7e"
}