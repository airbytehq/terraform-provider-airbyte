resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        subdomain     = "...my_subdomain..."
      }
    }
  }
  definition_id = "cb22d725-edac-48cf-960b-7a9061de3d71"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "707c7d95-d41e-41eb-818e-3cf0601dca20"
}