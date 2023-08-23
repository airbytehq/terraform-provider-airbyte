resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "datascope"
    start_date  = "dd/mm/YYYY HH:MM"
  }
  name         = "Amy Lynch"
  secret_id    = "...my_secret_id..."
  workspace_id = "4fefa9c9-5f2e-4ac5-965d-307cfee81206"
}