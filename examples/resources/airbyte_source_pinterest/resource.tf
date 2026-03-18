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
        click_window_days = 30
        columns = [
          "PIN_PROMOTION_ID"
        ]
        conversion_report_time = "TIME_OF_AD_ACTION"
        engagement_window_days = 30
        granularity            = "TOTAL"
        level                  = "ADVERTISER"
        name                   = "...my_name..."
        start_date             = "2022-07-28"
        view_window_days       = 30
      }
    ]
    num_threads = 1
    start_date  = "2022-07-28"
    status = [
      "ACTIVE"
    ]
  }
  definition_id = "5cb7e5fe-38c2-11ec-8d3d-0242ac130003"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d479a13-e183-4090-af9e-7a388174d4f2"
}