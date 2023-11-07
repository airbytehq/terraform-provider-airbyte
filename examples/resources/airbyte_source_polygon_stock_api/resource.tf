resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "true"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 120
    multiplier    = 1
    sort          = "asc"
    start_date    = "2020-10-14"
    stocks_ticker = "IBM"
    timespan      = "day"
  }
  name         = "Shari Jerde"
  secret_id    = "...my_secret_id..."
  workspace_id = "c5cd0a4f-da52-4f69-943b-8620d9bb5048"
}