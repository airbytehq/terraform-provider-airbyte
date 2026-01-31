resource "airbyte_source_ebay_fulfillment" "my_source_ebayfulfillment" {
  configuration = {
    additional_properties  = "{ \"see\": \"documentation\" }"
    api_host               = "https://api.sandbox.ebay.com"
    password               = "...my_password..."
    redirect_uri           = "...my_redirect_uri..."
    refresh_token          = "...my_refresh_token..."
    refresh_token_endpoint = "https://api.ebay.com/identity/v1/oauth2/token"
    start_date             = "2022-02-21T07:43:59.926Z"
    username               = "...my_username..."
  }
  definition_id = "4ebe0b3e-2255-403d-b4a2-583b8130b08b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ed281fd6-82e3-4b3c-8a37-155229523afd"
}