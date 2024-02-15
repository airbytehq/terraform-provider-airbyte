resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    action_breakdowns_allow_empty = false
    client_id                     = "...my_client_id..."
    client_secret                 = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "action_video_sound",
        ]
        action_report_time = "impression"
        breakdowns = [
          "age",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "cost_per_thruplay",
        ]
        insights_job_timeout     = 3
        insights_lookback_window = 4
        level                    = "adset"
        name                     = "Sally Collier"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 0
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = true
    include_deleted          = true
    insights_job_timeout     = 8
    insights_lookback_window = 4
    page_size                = 9
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "f50fbf71-3464-4ed5-bf6d-67306cc548e6"
  name          = "Garrett Yost"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ff480df1-43ee-410f-8279-e427b2c340e1"
}