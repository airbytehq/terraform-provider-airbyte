resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id   = "...my_domain_id..."
    secret_key  = "...my_secret_key..."
    source_type = "shortio"
    start_date  = "...my_start_date..."
  }
  name         = "Billy Heathcote MD"
  workspace_id = "9f2e0724-67b8-4a40-bc05-fab0d650edf2"
}