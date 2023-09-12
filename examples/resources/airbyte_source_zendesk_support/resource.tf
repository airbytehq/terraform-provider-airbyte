resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      source_zendesk_support_authentication_api_token = {
        api_token   = "...my_api_token..."
        credentials = "api_token"
        email       = "Ezequiel.Lindgren56@yahoo.com"
      }
    }
    ignore_pagination = true
    source_type       = "zendesk-support"
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  name         = "Alexander Friesen"
  secret_id    = "...my_secret_id..."
  workspace_id = "82dbec75-c68c-4606-9946-8ce304d8849b"
}