resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key      = "...my_access_key..."
    base            = "USD"
    ignore_weekends = false
    start_date      = "YYYY-MM-DD"
  }
  definition_id = "8e649d76-75fb-4581-a2af-6a8ac65536a2"
  name          = "Dr. Regina West"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d309ea58-0059-44fb-9866-314cace02f96"
}