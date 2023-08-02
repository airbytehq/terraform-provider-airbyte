resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "datascope"
    start_date  = "dd/mm/YYYY HH:MM"
  }
  name         = "Dianne Schroeder"
  secret_id    = "...my_secretId..."
  workspace_id = "fefa9c95-f2ea-4c55-a5d3-07cfee81206e"
}