resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    adjusted      = "false"
    api_key       = "...my_api_key..."
    end_date      = "2020-10-14"
    limit         = 120
    multiplier    = 2
    sort          = "desc"
    start_date    = "2020-10-14"
    stocks_ticker = "MSFT"
    timespan      = "day"
  }
  definition_id = "1ee12f8a-7db0-498a-b412-66a87d389094"
  name          = "Emanuel Paucek"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bbea9f5a-35d1-4bd0-bb63-21f6b4ca6472"
}