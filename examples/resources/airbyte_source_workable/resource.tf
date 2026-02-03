resource "airbyte_source_workable" "my_source_workable" {
  configuration = {
    account_subdomain     = "...my_account_subdomain..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "20150708T115616Z"
  }
  definition_id = "becc7a9e-61f7-4111-aeb6-44b47331d8ea"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bd552522-1e96-4c1f-88eb-883a56247839"
}