resource "airbyte_source_ebay_finance" "my_source_ebayfinance" {
  configuration = {
    additional_properties  = "{ \"see\": \"documentation\" }"
    api_host               = "https://apiz.sandbox.ebay.com"
    client_access_token    = "...my_client_access_token..."
    password               = "...my_password..."
    redirect_uri           = "...my_redirect_uri..."
    refresh_token          = "...my_refresh_token..."
    start_date             = "2021-12-16T21:38:17.283Z"
    token_refresh_endpoint = "https://api.ebay.com/identity/v1/oauth2/token"
    username               = "...my_username..."
  }
  definition_id = "fe80294f-e561-4171-b0e3-d35e0114ab57"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f286d5a-0d1c-4eac-801c-de4fe3493f89"
}