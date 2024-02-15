resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 120
    multiplier    = 2
    sort          = "desc"
    start_date    = "2020-10-14"
    stocks_ticker = "IBM"
    timespan      = "day"
  }
  definition_id = "367bfee5-23e3-46b7-8e8f-7b837d76b02a"
  name          = "Chelsea Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2fd0239-5071-47b2-86b8-fda8b48bf3f0"
}