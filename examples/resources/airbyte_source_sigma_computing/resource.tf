resource "airbyte_source_sigma_computing" "my_source_sigmacomputing" {
  configuration = {
    additional_properties   = "{ \"see\": \"documentation\" }"
    base_url                = "...my_base_url..."
    client_id               = "...my_client_id..."
    client_refresh_token    = "...my_client_refresh_token..."
    client_secret           = "...my_client_secret..."
    oauth_access_token      = "...my_oauth_access_token..."
    oauth_token_expiry_date = "2022-11-25T13:18:47.391Z"
  }
  definition_id = "2183b8f7-fa62-4d18-8e66-25f2d2a2ccf8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d14e9abc-7985-4e33-958c-16fc4a2932f0"
}