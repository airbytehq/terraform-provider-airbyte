resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    action_breakdowns_allow_empty = false
    ad_statuses = [
      "IN_PROCESS",
    ]
    adset_statuses = [
      "ARCHIVED",
    ]
    campaign_statuses = [
      "ARCHIVED",
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "action_destination",
        ]
        action_report_time = "impression"
        breakdowns = [
          "impression_device",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "video_play_curve_actions",
        ]
        insights_job_timeout     = 2
        insights_lookback_window = 0
        level                    = "campaign"
        name                     = "Melody Dicki"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 7
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    insights_job_timeout     = 6
    insights_lookback_window = 3
    page_size                = 9
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "79cbeca1-c757-43a5-bbba-82d4c0a2cef7"
  name          = "Douglas Crona"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5bca9a48-04a9-4e0d-9c31-56b2ffd5d6c6"
}