resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Camylle.Batz@yahoo.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "ee427f93-df9b-4f84-b784-edaaf2f424ed"
  name          = "Nancy Langosh III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0992622-de7b-41a9-be59-15fe5844c8d7"
}