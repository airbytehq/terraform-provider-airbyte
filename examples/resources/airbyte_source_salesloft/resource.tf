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
  name         = "Bethany Hansen"
  secret_id    = "...my_secret_id..."
  workspace_id = "50495c5d-bb3c-457c-9e49-81e8aa257ddc"
}