resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 1
    sort          = "desc"
    source_type   = "polygon-stock-api"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  name         = "Sylvia Lindgren"
  secret_id    = "...my_secret_id..."
  workspace_id = "5b260591-d745-4e3c-a059-c9c3f567e0e2"
}