resource "airbyte_source_shortio" "my_source_shortio" {
  configuration = {
    domain_id   = "...my_domain_id..."
    secret_key  = "...my_secret_key..."
    source_type = "shortio"
    start_date  = "2023-07-30T03:43:59.244Z"
  }
  name         = "Troy Streich I"
  secret_id    = "...my_secret_id..."
  workspace_id = "9ea5f9b1-8a24-44fd-a190-39dacd38ed0d"
}