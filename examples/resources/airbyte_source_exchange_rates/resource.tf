resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key            = "...my_access_key..."
    additional_properties = "{ \"see\": \"documentation\" }"
    base                  = "EUR"
    ignore_weekends       = true
    start_date            = "YYYY-MM-DD"
  }
  definition_id = "c49afc85-a53f-43b2-92dd-a787ae40e34f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "93ca9905-1947-4829-aec9-6a2652d69c6a"
}