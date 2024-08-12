resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "156b2ffd-5d6c-469d-a549-7add71ffdea5"
  name          = "Ms. Reginald Nienow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09edcef2-c435-47e7-ab14-9e6fe9a76bd2"
}