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
          "action_video_sound",
        ]
        action_report_time = "mixed"
        breakdowns = [
          "mmm",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "cpp",
        ]
        insights_lookback_window = 7
        level                    = "ad"
        name                     = "Julio Beier"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 9
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    include_deleted          = false
    insights_lookback_window = 2
    page_size                = 3
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "7eb149e6-fe9a-476b-9271-d6f7a77e51b0"
  name          = "Olivia MacGyver"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e6bc1e2-2381-4cdc-ae96-42f3c2fe19c3"
}