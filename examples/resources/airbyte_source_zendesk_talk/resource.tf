resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      source_zendesk_talk_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Brain88@gmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "9a97873e-c6ec-423f-8936-834bb7f256aa"
  name          = "Gwen Towne"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a7ac93c-e210-41f6-92ef-f8de56504728"
}