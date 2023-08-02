resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "datascope"
    start_date  = "dd/mm/YYYY HH:MM"
  }
  name         = "Sandra Keeling"
  workspace_id = "78878ba8-581a-4582-88c5-4fefa9c95f2e"
}