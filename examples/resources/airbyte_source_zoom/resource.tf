resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    additional_properties  = "{ \"see\": \"documentation\" }"
    authorization_endpoint = "https://zoom.us/oauth/token"
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "cbfd9856-1322-44fb-bcf1-0b39b7a8e92e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6eb5b976-337b-4ae9-8097-89298f1ccb4e"
}