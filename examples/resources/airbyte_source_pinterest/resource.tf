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
        click_window_days = "14"
        columns = [
          "VIDEO_LENGTH",
        ]
        conversion_report_time = "TIME_OF_AD_ACTION"
        engagement_window_days = "1"
        granularity            = "HOUR"
        level                  = "PIN_PROMOTION"
        name                   = "Mr. Marcos Baumbach DVM"
        start_date             = "2022-07-28"
        view_window_days       = "30"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ARCHIVED",
    ]
  }
  definition_id = "2676b4d9-282a-4d19-925d-5253fa02ef00"
  name          = "Ms. Moses Boehm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "81572f72-4d1e-40e7-a708-b9f815bf9f13"
}