resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id   = "...my_domain_id..."
    secret_key  = "...my_secret_key..."
    source_type = "shortio"
    start_date  = "...my_start_date..."
  }
  name         = "Kenneth Swaniawski"
  secret_id    = "...my_secretId..."
  workspace_id = "0edf22a9-4d20-4ec9-8ea4-1d1f465e8515"
}