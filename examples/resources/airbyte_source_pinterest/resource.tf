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
      "ARCHIVED",
    ]
  }
  name         = "Miss Larry Kunde"
  secret_id    = "...my_secretId..."
  workspace_id = "163e279a-3b08-44da-9925-7d04f40847a7"
}