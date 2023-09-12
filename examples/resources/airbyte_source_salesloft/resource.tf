resource "airbyte_source_salesloft" "my_source_salesloft" {
  configuration = {
    credentials = {
      source_salesloft_credentials_authenticate_via_api_key = {
        api_key   = "...my_api_key..."
        auth_type = "api_key"
      }
    }
    source_type = "salesloft"
    start_date  = "2020-11-16T00:00:00Z"
  }
  name         = "Lynda Dicki"
  secret_id    = "...my_secret_id..."
  workspace_id = "2c1aa010-e9aa-4c2e-9135-586d18f9f97a"
}