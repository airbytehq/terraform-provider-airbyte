resource "airbyte_source_braze" "my_source_braze" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "braze"
    start_date  = "2022-11-23"
    url         = "...my_url..."
  }
  name         = "Tricia DuBuque"
  secret_id    = "...my_secret_id..."
  workspace_id = "8fdaf313-a1f5-4fd9-8259-c0b36f25ea94"
}