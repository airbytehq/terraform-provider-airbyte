resource "airbyte_source_exchange_rates" "my_source_exchangerates" {
  configuration = {
    access_key            = "...my_access_key..."
    additional_properties = "{ \"see\": \"documentation\" }"
    base                  = "EUR"
    ignore_weekends       = true
    start_date            = "YYYY-MM-DD"
  }
  definition_id = "e2b40e36-aa0e-4bed-b41b-bcea6fa348b1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "93ca9905-1947-4829-aec9-6a2652d69c6a"
}