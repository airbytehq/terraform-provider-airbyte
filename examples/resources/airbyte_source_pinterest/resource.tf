resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    credentials = {
      source_pinterest_authorization_method_access_token = {
        access_token = "...my_access_token..."
        auth_method  = "access_token"
      }
    }
    source_type = "pinterest"
    start_date  = "2022-07-28"
    status = [
      "PAUSED",
    ]
  }
  name         = "Jordan Hegmann"
  secret_id    = "...my_secret_id..."
  workspace_id = "60591d74-5e3c-4205-9c9c-3f567e0e2527"
}