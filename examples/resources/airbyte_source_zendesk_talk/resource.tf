resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Jessica.Predovic@gmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "0ba64daf-2cd7-4c8f-a575-7a306443a75b"
  name          = "Boyd Haag"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e1378db0-1d76-4f7d-927a-a6e51f0c20e4"
}