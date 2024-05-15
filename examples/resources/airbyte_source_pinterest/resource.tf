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
        click_window_days = "14"
        columns = [
          "REPIN_RATE",
        ]
        conversion_report_time = "TIME_OF_AD_ACTION"
        engagement_window_days = "0"
        granularity            = "HOUR"
        level                  = "KEYWORD"
        name                   = "Mr. Daniel Bergstrom III"
        start_date             = "2022-07-28"
        view_window_days       = "7"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  definition_id = "6f2bce2e-77bb-4cce-b588-ac548be8a7a9"
  name          = "Rudolph Wilkinson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c79293e2-8aa8-4190-b348-b38fe3b52011"
}