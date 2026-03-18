resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    adjusted              = "true"
    api_key               = "...my_api_key..."
    end_date              = "2020-10-14"
    limit                 = 100
    multiplier            = 1
    sort                  = "asc"
    start_date            = "2020-10-14"
    stocks_ticker         = "IBM"
    timespan              = "day"
  }
  definition_id = "5807d72f-0abc-49f9-8fa5-ae820007032b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "107f0754-ac3a-433a-939c-817661495e42"
}