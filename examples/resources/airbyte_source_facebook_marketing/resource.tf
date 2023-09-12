resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token                  = "...my_access_token..."
    account_id                    = "111111111111111"
    action_breakdowns_allow_empty = true
    client_id                     = "...my_client_id..."
    client_secret                 = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "action_destination",
        ]
        action_report_time = "conversion"
        breakdowns = [
          "frequency_value",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "account_name",
        ]
        insights_lookback_window = 6
        level                    = "ad"
        name                     = "Jesus Batz"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 8
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    include_deleted          = true
    insights_lookback_window = 4
    max_batch_size           = 7
    page_size                = 3
    source_type              = "facebook-marketing"
    start_date               = "2017-01-25T00:00:00Z"
  }
  name         = "Ms. Wilbert McGlynn"
  secret_id    = "...my_secret_id..."
  workspace_id = "04f926ba-d255-4381-9b47-4b0ed20e5624"
}