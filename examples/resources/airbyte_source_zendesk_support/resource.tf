resource "airbyte_source_zendesk_support" "my_source_zendesksupport" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Ericka_Dach@yahoo.com"
      }
    }
    ignore_pagination = false
    start_date        = "2020-10-15T00:00:00Z"
    subdomain         = "...my_subdomain..."
  }
  definition_id = "8d41f294-78bd-4831-a4ca-f6a030f2320a"
  name          = "Tom Schamberger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "feed35fd-4712-4605-a597-81224214e979"
}