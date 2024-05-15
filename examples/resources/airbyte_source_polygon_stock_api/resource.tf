resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 120
    multiplier    = 2
    sort          = "asc"
    start_date    = "2020-10-14"
    stocks_ticker = "IBM"
    timespan      = "day"
  }
  definition_id = "c28b278d-25e4-4ee4-a51a-be7bbe4e8da5"
  name          = "Ivan Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a5cf8db4-8a2c-4c40-87b1-20c3ecc1558e"
}