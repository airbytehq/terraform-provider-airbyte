resource "airbyte_source_yahoo_finance_price" "my_source_yahoofinanceprice" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    interval              = "15m"
    range                 = "max"
    tickers               = "...my_tickers..."
  }
  definition_id = "8100c023-7d84-4aad-9784-afef2ba70f31"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d8a733d1-b0d4-4eec-8706-d4b942202193"
}