resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Ella_Fritsch84@yahoo.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "9e67badf-74d2-43a8-ba42-abf6ae57802d"
  name          = "Matt Larkin V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98eac752-6c0e-468d-81f2-9478bd831a4c"
}