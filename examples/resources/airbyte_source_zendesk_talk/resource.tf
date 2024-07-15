resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Lavada.Kshlerin@yahoo.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "c6ec23f8-9368-434b-b7f2-56aa2eed97a7"
  name          = "Jermaine Miller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2101f69-2eff-48de-9650-472830aace29"
}