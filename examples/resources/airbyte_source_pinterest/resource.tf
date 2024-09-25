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
          "OUTBOUND_CLICK_2",
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = "0"
        granularity            = "WEEK"
        level                  = "PRODUCT_ITEM"
        name                   = "Kristen Wisoky"
        start_date             = "2022-07-28"
        view_window_days       = "30"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "PAUSED",
    ]
  }
  definition_id = "1ac64878-76fc-4ad6-95bc-ace687b33710"
  name          = "Alma Marks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7b02fd2-5c77-427b-b635-4281d3e7f0bc"
}