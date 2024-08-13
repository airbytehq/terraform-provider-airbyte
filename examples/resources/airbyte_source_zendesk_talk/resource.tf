resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Carolyne_Turcotte57@hotmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "7ac93ce2-101f-4692-aff8-de5650472830"
  name          = "Grant Schmitt V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d7b3b35-8aff-4520-ae7c-66512764ede9"
}