resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token   = "...my_api_token..."
      credentials = "api_token"
      email       = "Urban_Bechtelar@yahoo.com"
    }
    ignore_pagination = false
    source_type       = "zendesk-support"
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  name         = "Gregg Littel"
  workspace_id = "92386f62-c969-4c4c-86b7-8890a3fd3c81"
}