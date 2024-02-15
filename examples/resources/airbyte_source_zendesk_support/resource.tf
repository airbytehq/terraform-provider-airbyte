resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Pierre80@hotmail.com"
      }
    }
    ignore_pagination = true
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "01f692ef-f8de-4565-8472-830aace290d7"
  name          = "Chad Reinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8aff5206-e7c6-4651-a764-ede9cd819ecc"
}