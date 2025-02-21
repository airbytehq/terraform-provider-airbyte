resource "airbyte_source_bugsnag" "my_source_bugsnag" {
  configuration = {
    auth_token = "...my_auth_token..."
    start_date = "2021-11-06T23:01:39.263Z"
  }
  definition_id = "188b3e3c-513e-4d6e-a41e-70b14f6efa31"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5513a4b4-a558-4b5c-8dcf-e6c5cde30c15"
}