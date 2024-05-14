resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 1
    sort          = "desc"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  definition_id = "51a2676b-4d92-482a-919d-25d5253fa02e"
  name          = "Timothy Balistreri"
  secret_id     = "...my_secret_id..."
  workspace_id  = "118d8157-2f72-44d1-a0e7-e708b9f815bf"
}