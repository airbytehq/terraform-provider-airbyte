resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    action_breakdowns_allow_empty = true
    ad_statuses = [
      "ADSET_PAUSED",
    ]
    adset_statuses = [
      "PAUSED",
    ]
    campaign_statuses = [
      "DELETED",
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "standard_event_content_type",
        ]
        action_report_time = "impression"
        breakdowns = [
          "media_text_content",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "video_play_curve_actions",
        ]
        insights_job_timeout     = 3
        insights_lookback_window = 1
        level                    = "campaign"
        name                     = "Eleanor Prosacco"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 10
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    insights_job_timeout     = 1
    insights_lookback_window = 9
    page_size                = 2
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "81cdc2e9-642f-43c2-be19-c32edfee92bc"
  name          = "Wendy Kunze"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d2c887f2-8ef9-475a-bb10-2e5487915a2f"
}