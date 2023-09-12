resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 1
    sort          = "asc"
    source_type   = "polygon-stock-api"
    start_date    = "2020-10-14"
    stocks_ticker = "IBM"
    timespan      = "day"
  }
  name         = "Mary Fisher"
  secret_id    = "...my_secret_id..."
  workspace_id = "fb5971e9-8190-4557-b89c-edbac7fda395"
}