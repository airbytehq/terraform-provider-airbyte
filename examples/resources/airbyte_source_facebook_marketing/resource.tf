resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    action_breakdowns_allow_empty = true
    ad_statuses = [
      "PENDING_BILLING_INFO",
    ]
    adset_statuses = [
      "PAUSED",
    ]
    campaign_statuses = [
      "IN_PROCESS",
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    credentials = {
      authenticate_via_facebook_marketing_oauth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    custom_insights = [
      {
        action_breakdowns = [
          "action_destination",
        ]
        action_report_time = "impression"
        breakdowns = [
          "skan_conversion_id",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "video_avg_time_watched_actions",
        ]
        insights_job_timeout     = 0
        insights_lookback_window = 10
        level                    = "campaign"
        name                     = "Darryl Wunsch"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 8
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = true
    insights_job_timeout     = 10
    insights_lookback_window = 6
    page_size                = 8
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "a3dd0007-daef-4770-881f-95c5b8dd2d32"
  name          = "Stanley Kutch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fec5cd0a-4fda-452f-a954-3b8620d9bb50"
}