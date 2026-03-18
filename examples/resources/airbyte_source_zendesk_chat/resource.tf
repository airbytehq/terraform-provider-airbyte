resource "airbyte_source_zendesk_chat" "my_source_zendeskchat" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-02-01T00:00:00Z"
    subdomain  = "myzendeskchat"
  }
  definition_id = "40d24d0f-b8f9-4fe0-9e6c-b06c0f3f45e4"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "163f1f29-3c8c-43af-8d79-98eebba4d690"
}