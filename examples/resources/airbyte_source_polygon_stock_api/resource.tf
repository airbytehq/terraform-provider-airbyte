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
  definition_id = "23c8e5e2-59fe-44ef-a493-875b5a324c61"
  name          = "Tracey Paucek"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bad07307-82c3-4e82-a825-101e3e25c699"
}