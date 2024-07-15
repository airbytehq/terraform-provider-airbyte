resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "1d6f7a77-e51b-404b-8d52-e6bc1e22381c"
  name          = "Salvatore Conroy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "642f3c2f-e19c-432e-9fee-92bc3373ad2c"
}