resource "airbyte_source_pinterest" "my_source_pinterest" {
  configuration = {
    credentials = {
      source_pinterest_o_auth2_0 = {
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    custom_reports = [
      {
        attribution_types = [
          "HOUSEHOLD",
        ]
        click_window_days = "30"
        columns = [
          "TOTAL_IDEA_PIN_PRODUCT_TAG_VISIT",
        ]
        conversion_report_time = "TIME_OF_AD_ACTION"
        engagement_window_days = "7"
        granularity            = "MONTH"
        level                  = "CAMPAIGN"
        name                   = "Ms. Edgar Halvorson"
        start_date             = "2022-07-28"
        view_window_days       = "0"
      },
    ]
    start_date = "2022-07-28"
    status = [
      "ACTIVE",
    ]
  }
  definition_id = "66a5ec46-f2bc-4e2e-b7bb-ccef588ac548"
  name          = "Lamar Lakin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a9dbf52c-7929-43e2-8aa8-1903348b38fe"
}