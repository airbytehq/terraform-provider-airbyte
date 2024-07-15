resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 100
    multiplier    = 1
    sort          = "asc"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  definition_id = "a6472a5f-8aec-48fe-9b8f-c35367bfee52"
  name          = "Olive Durgan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "74e8f7b8-37d7-46b0-aa3d-797c2fd02395"
}