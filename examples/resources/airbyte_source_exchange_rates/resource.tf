resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  name         = "Eleanor O'Conner PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "23c3d11f-f934-4df0-9756-d8b0d90daf91"
}