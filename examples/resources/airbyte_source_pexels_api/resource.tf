resource "airbyte_source_pexels_api" "my_source_pexelsapi" {
  configuration = {
    api_key     = "...my_api_key..."
    color       = "orange"
    locale      = "en-US"
    orientation = "landscape"
    query       = "oceans"
    size        = "large"
  }
  definition_id = "0dcdadd4-7961-4168-b4fa-7262d2a48f97"
  name          = "Mr. Lynette Spencer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0984937-5f62-4278-90d4-1f13919c925e"
}