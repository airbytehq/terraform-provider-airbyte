resource "airbyte_source_datascope" "my_source_datascope" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "datascope"
    start_date  = "dd/mm/YYYY HH:MM"
  }
  name         = "Danny Bahringer"
  secret_id    = "...my_secret_id..."
  workspace_id = "fee81206-e281-43fa-8a41-c480d3f2132a"
}