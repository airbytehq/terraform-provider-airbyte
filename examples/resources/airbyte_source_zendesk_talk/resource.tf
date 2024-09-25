resource "airbyte_source_zendesk_talk" "my_source_zendesktalk" {
  configuration = {
    credentials = {
      api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_token             = "...my_api_token..."
        email                 = "Rosetta80@yahoo.com"
      }
    }
    start_date = "2020-10-15T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "4fedbcbf-3e77-4c50-8d4a-9e4cf2cbf64f"
  name          = "Mrs. Dana Durgan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f5123775-cbfc-468f-bdb9-d76708c4a402"
}