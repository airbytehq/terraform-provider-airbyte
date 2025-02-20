resource "airbyte_source_finnhub" "my_source_finnhub" {
  configuration = {
    api_key              = "...my_api_key..."
    exchange             = "...my_exchange..."
    market_news_category = "general"
    start_date_2         = "2022-05-18T12:51:37.658Z"
    symbols = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "426504bb-5bb9-490a-9b4d-4bbfe4324584"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "42be0db2-a152-4027-a103-e5e0ac5819d4"
}