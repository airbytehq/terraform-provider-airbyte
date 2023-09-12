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
      "ACTIVE",
    ]
  }
  name         = "Nathan Bauch"
  secret_id    = "...my_secret_id..."
  workspace_id = "3df5b671-9890-4f42-a4bb-438d85b26059"
}