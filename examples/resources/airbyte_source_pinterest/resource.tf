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
          "CAMPAIGN_DAILY_SPEND_CAP",
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = "30"
        granularity            = "MONTH"
        level                  = "PRODUCT_GROUP_TARGETING"
        name                   = "Dr. Fred Grady"
        start_date             = "2022-07-28"
        view_window_days       = "1"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  definition_id = "c879583a-59a8-4255-b101-40178456a4c1"
  name          = "Bessie Emard"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c277a8e-2388-4fd0-920f-62c51a2676b4"
}