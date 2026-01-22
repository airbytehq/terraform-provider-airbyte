resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "1e6d92c0-d528-4e92-ac5d-17a0ca574482"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a46bf3e2-e63d-4e32-8959-37721daec43c"
}