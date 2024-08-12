resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Anastacio94@yahoo.com"
      }
    }
    ignore_pagination = true
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "0a84c82f-eed3-45fd-8712-605259781224"
  name          = "Kathleen Greenfelder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "79a97873-ec6e-4c23-b893-6834bb7f256a"
}