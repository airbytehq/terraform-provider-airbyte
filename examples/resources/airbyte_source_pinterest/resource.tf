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
        click_window_days = "0"
        columns = [
          "TOTAL_WEB_CLICK_CHECKOUT_VALUE_IN_MICRO_DOLLAR",
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = "60"
        granularity            = "WEEK"
        level                  = "PRODUCT_GROUP_TARGETING"
        name                   = "Jay Klein"
        start_date             = "2022-07-28"
        view_window_days       = "7"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  definition_id = "fa7262d2-a48f-4976-9d11-df09849375f6"
  name          = "Rachel Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d41f139-19c9-425e-b865-17a80112166a"
}