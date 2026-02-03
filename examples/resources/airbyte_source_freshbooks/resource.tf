resource "airbyte_source_freshbooks" "my_source_freshbooks" {
  configuration = {
    account_id              = "...my_account_id..."
    additional_properties   = "{ \"see\": \"documentation\" }"
    business_uuid           = "...my_business_uuid..."
    client_id               = "...my_client_id..."
    client_refresh_token    = "...my_client_refresh_token..."
    client_secret           = "...my_client_secret..."
    oauth_access_token      = "...my_oauth_access_token..."
    oauth_token_expiry_date = "2021-05-20T12:27:43.350Z"
    redirect_uri            = "...my_redirect_uri..."
  }
  definition_id = "7501c030-944b-48f7-bbd3-48fb58904c1c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "53c1a948-4474-4eae-bf5b-7784e0932710"
}