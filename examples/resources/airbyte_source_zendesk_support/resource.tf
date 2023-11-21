resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      source_zendesk_support_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Ansel_McLaughlin@gmail.com"
      }
    }
    ignore_pagination = false
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "7526c0e6-8d41-4f29-878b-d831a4caf6a0"
  name          = "Linda Weissnat"
  secret_id     = "...my_secret_id..."
  workspace_id  = "20a84c82-feed-435f-9471-260525978122"
}