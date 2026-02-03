resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    account_id            = "1234567890"
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    custom_reports = [
      {
        attribution_types = [
          "INDIVIDUAL"
        ]
        click_window_days = 60
        columns = [
          "PIN_PROMOTION_ID"
        ]
        conversion_report_time = "TIME_OF_CONVERSION"
        engagement_window_days = 30
        granularity            = "MONTH"
        level                  = "CAMPAIGN"
        name                   = "...my_name..."
        start_date             = "2022-07-28"
        view_window_days       = 7
      }
    ]
    num_threads = 1
    start_date  = "2022-07-28"
    status = [
      "ACTIVE"
    ]
  }
  definition_id = "7540406c-2051-4504-8c28-ddff47d8716f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d479a13-e183-4090-af9e-7a388174d4f2"
}