resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    source_type     = "exchange-rates"
    start_date      = "YYYY-MM-DD"
  }
  name         = "Mrs. Leslie Klocko"
  secret_id    = "...my_secret_id..."
  workspace_id = "c0f5ae2f-3a6b-4700-8787-56143f5a6c98"
}