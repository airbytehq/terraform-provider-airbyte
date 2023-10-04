resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      source_zendesk_talk_authentication_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Gabriella.Mills28@gmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  name         = "Shawna Davis"
  secret_id    = "...my_secret_id..."
  workspace_id = "1a4e4668-49f7-4bbe-aaef-524043cb4c47"
}