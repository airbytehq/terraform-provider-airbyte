resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "dd/mm/YYYY HH:MM"
  }
  definition_id = "41ba6f5d-90d5-4a8a-b49e-2072bdff3818"
  name          = "Rudy Tremblay DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb32a781-73ab-4b82-a6a7-189e9256d746"
}