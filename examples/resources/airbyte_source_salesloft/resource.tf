resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      source_salesloft_credentials_authenticate_via_api_key = {
        api_key = "...my_api_key..."
      }
    }
    start_date = "2020-11-16T00:00:00Z"
  }
  name         = "Dr. Johnny Hauck"
  secret_id    = "...my_secret_id..."
  workspace_id = "206afb3a-724a-460d-8013-4e58876cb030"
}