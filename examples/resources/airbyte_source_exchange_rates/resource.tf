resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "EUR"
    ignore_weekends = true
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "a5bbba82-d4c0-4a2c-af78-12475bca9a48"
  name          = "Amber Osinski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0ddc3156-b2ff-4d5d-ac69-da5497add71f"
}