resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    action_breakdowns_allow_empty = false
    ad_statuses = [
      "ACTIVE",
    ]
    adset_statuses = [
      "CAMPAIGN_PAUSED",
    ]
    campaign_statuses = [
      "DELETED",
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "action_type",
        ]
        action_report_time = "conversion"
        breakdowns = [
          "standard_event_content_type",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "cost_per_inline_post_engagement",
        ]
        insights_job_timeout     = 9
        insights_lookback_window = 4
        level                    = "account"
        name                     = "Ramona Spencer"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 4
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    insights_job_timeout     = 5
    insights_lookback_window = 0
    page_size                = 10
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "ea586a09-709e-4dce-b2c4-357e7eb149e6"
  name          = "Terence Miller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6bd271d6-f7a7-47e5-9b04-b8d52e6bc1e2"
}