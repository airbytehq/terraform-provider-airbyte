resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "true"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 120
    multiplier    = 1
    sort          = "desc"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  definition_id = "15bf9f13-70c2-48b2-b8d2-5e4ee4a51abe"
  name          = "Antoinette Rempel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e8da5f86-7ba5-4cf8-9b48-a2cc4047b120"
}