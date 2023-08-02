resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = true
    source_type     = "exchange-rates"
    start_date      = "YYYY-MM-DD"
  }
  name         = "Annie Breitenberg"
  secret_id    = "...my_secretId..."
  workspace_id = "47dc915a-d2ca-4f5d-9672-3dc0f5ae2f3a"
}