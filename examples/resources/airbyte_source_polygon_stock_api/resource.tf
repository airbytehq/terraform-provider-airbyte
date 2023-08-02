resource "airbyte_source_polygon_stock_api" "my_source_polygonstockapi" {
    configuration = {
        adjusted = "false"
        api_key = "...my_apiKey..."
        end_date = "2020-10-14"
        limit = 100
        multiplier = 1
        sort = "desc"
        source_type = "polygon-stock-api"
        start_date = "2020-10-14"
        stocks_ticker = "IBM"
        timespan = "day"
    }
            name = "Rosalie Kuhlman"
            workspace_id = "6a1f30c7-3df5-4b67-9989-0f42a4bb438d"
        }