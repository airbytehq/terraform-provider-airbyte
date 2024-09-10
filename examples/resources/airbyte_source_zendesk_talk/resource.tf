resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Jan.OConner@hotmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "89949514-7b12-4e2d-8774-d24e5a5b3df8"
  name          = "Kerry Lynch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c48d7309-6598-4895-bdb7-81b6d18174b5"
}