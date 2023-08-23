resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "true"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 2
    sort          = "desc"
    source_type   = "polygon-stock-api"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  name         = "Spencer Kirlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "a39594d6-6bc2-4ae4-8063-2b9954b6fa22"
}