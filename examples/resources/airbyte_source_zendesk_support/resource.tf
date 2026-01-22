resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "...my_email..."
      }
    }
    num_workers = 1
    start_date  = "2020-10-15T00:00:00Z"
    subdomain   = "...my_subdomain..."
  }
  definition_id = "2f4827bb-f12c-45a8-a7c8-fc92af717ff3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "88e43c5a-c5bf-4914-bf88-1d261e2148a9"
}