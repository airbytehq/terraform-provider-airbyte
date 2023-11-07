resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      source_zendesk_support_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Yolanda.Strosin35@yahoo.com"
      }
    }
    ignore_pagination = false
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  name         = "Miss Jodi Berge"
  secret_id    = "...my_secret_id..."
  workspace_id = "c447712b-4a02-4088-b0aa-beffb8d97651"
}