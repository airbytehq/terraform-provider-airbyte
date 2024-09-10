resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  definition_id = "d57541c3-612b-40e8-88cf-11a0d259943d"
  name          = "Shannon Heller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9e475abf-fba2-4c1e-bb69-08ecd761f19b"
}