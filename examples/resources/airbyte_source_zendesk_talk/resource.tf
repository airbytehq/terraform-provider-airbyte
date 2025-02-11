resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "...my_email..."
      }
      o_auth20 = {
        access_token          = "...my_access_token..."
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "e7ee4b55-6c77-4538-98ca-55b7fcd9709e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cd975799-f035-4990-a6b4-4906b99cbebc"
}