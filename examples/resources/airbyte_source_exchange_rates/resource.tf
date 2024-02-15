resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "6e3c2d33-082a-4b84-8e56-112c1fda0210"
  name          = "Darrell Schaefer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec287654-f12b-4c84-828f-bb0cddcf802e"
}