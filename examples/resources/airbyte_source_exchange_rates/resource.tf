resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = true
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "24121e63-15be-4306-a4e8-3994413a7c75"
  name          = "Alexander Schroeder MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5882c881-a087-48bf-9f7e-2fa4a63623e3"
}