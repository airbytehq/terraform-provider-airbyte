resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Priscilla.Bergstrom51@hotmail.com"
      }
    }
    ignore_pagination = true
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "00a18f6f-5072-4b63-af98-b5cd0fbbcc17"
  name          = "Katie Bartoletti"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ebd0cf43-5b72-4f05-818a-11c8951c09c2"
}