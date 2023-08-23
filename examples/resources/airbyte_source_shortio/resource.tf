resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id   = "...my_domain_id..."
    secret_key  = "...my_secret_key..."
    source_type = "shortio"
    start_date  = "2023-07-30T03:43:59.244Z"
  }
  name         = "Carlos Armstrong"
  secret_id    = "...my_secret_id..."
  workspace_id = "0d1b4901-f2bd-489c-8a32-639da5b7b690"
}