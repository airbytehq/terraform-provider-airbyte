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
          "HOUSEHOLD",
        ]
        click_window_days = "1"
        columns = [
          "TOTAL_WEB_SESSIONS",
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = "0"
        granularity            = "HOUR"
        level                  = "ADVERTISER_TARGETING"
        name                   = "Dewey Bogisich"
        start_date             = "2022-07-28"
        view_window_days       = "60"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  definition_id = "3fa02ef0-08f1-418d-8157-2f724d1e0e7e"
  name          = "Sharon Labadie"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f815bf9f-1370-4c28-b278-d25e4ee4a51a"
}