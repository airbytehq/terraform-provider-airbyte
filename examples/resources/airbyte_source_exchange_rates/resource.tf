resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "EUR"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "36cf1afc-f94e-43c7-9cbe-ca1c7573a5bb"
  name          = "Alfonso Kutch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4c0a2cef-7812-4475-bca9-a4804a9e0ddc"
}