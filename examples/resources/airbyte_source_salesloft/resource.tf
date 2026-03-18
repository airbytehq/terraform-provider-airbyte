resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "41991d12-d4b5-439e-afd0-260a31d4c53f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ee86021-a435-499d-89be-1ea6358d6e40"
}