resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      source_zendesk_support_authentication_api_token = {
        api_token   = "...my_api_token..."
        credentials = "api_token"
        email       = "Ignacio_Langosh@hotmail.com"
      }
    }
    ignore_pagination = true
    source_type       = "zendesk-support"
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  name         = "Dallas Douglas"
  secret_id    = "...my_secretId..."
  workspace_id = "1da10f8c-23df-4931-9a3e-db51fad94acc"
}