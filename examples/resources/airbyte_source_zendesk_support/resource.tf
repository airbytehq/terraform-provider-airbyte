resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      source_zendesk_support_authentication_api_token = {
        api_token   = "...my_api_token..."
        credentials = "api_token"
        email       = "Kacie27@hotmail.com"
      }
    }
    ignore_pagination = false
    source_type       = "zendesk-support"
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  name         = "May McClure"
  secret_id    = "...my_secret_id..."
  workspace_id = "b0c69e37-2db1-4344-ba9f-78a5c0ed7aab"
}