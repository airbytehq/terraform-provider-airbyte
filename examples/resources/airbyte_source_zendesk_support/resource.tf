resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Kathryne.Hahn25@gmail.com"
      }
    }
    ignore_pagination = true
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "20644aee-427f-493d-b9bf-84b784edaaf2"
  name          = "Barry Conroy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d308606f-0992-4622-9e7b-1a93e5915fe5"
}