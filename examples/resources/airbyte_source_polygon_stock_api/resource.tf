resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "true"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 2
    sort          = "asc"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  definition_id = "52a9e475-abff-4ba2-81e7-b6908ecd761f"
  name          = "Sheryl Predovic V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a0804c97-1e60-4235-9c09-fadad73b79d2"
}