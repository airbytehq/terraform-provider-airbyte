resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    custom_reports = [
      {
        attribution_types = [
          "INDIVIDUAL",
        ]
        click_window_days = "7"
        columns = [
          "TOTAL_CLICK_CHECKOUT_VALUE_IN_MICRO_DOLLAR",
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = "60"
        granularity            = "HOUR"
        level                  = "KEYWORD"
        name                   = "Stanley Green"
        start_date             = "2022-07-28"
        view_window_days       = "30"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "PAUSED",
    ]
  }
  definition_id = "dc5f9765-35f7-43a4-9535-fff5d1d34f0c"
  name          = "Conrad Hane"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a3a161d-c53f-4641-88ac-b8b41d5bf94a"
}