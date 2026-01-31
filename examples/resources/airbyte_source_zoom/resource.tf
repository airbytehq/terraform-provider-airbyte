resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    additional_properties  = "{ \"see\": \"documentation\" }"
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "a9fb73c4-b1fb-4a36-9aa1-5885cf3ccb13"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6eb5b976-337b-4ae9-8097-89298f1ccb4e"
}