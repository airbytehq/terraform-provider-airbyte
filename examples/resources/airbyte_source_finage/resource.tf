resource "airbyte_source_finage" "my_source_finage" {
  configuration = {
    api_key    = "...my_api_key..."
    period     = "...my_period..."
    start_date = "2022-07-08T07:49:24.155Z"
    symbols = [
      "{ \"see\": \"documentation\" }"
    ]
    tech_indicator_type = "EMA"
    time                = "1min"
    time_aggregates     = "quarter"
    time_period         = "annual"
  }
  definition_id = "0f1bb04c-6207-448b-b70f-4930a2df2204"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "718b2f57-2fa0-4bc1-8559-cff2b8f77133"
}