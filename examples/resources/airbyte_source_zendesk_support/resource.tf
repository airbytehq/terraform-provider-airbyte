resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Sibyl.Kuhn37@hotmail.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "7d0d61fb-64b1-495d-b09b-664eddec27a2"
  name          = "Byron Lakin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54579de1-c1b0-4368-bea0-77f09d380eb8"
}