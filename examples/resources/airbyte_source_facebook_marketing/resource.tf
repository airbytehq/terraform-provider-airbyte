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
      "DELETED",
    ]
    campaign_statuses = [
      "WITH_ISSUES",
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
          "action_carousel_card_id",
        ]
        action_report_time = "impression"
        breakdowns = [
          "skan_conversion_id",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "dda_results",
        ]
        insights_job_timeout     = 4
        insights_lookback_window = 7
        level                    = "adset"
        name                     = "Scott Baumbach"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 5
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = true
    insights_job_timeout     = 3
    insights_lookback_window = 7
    page_size                = 1
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "49e5b0b6-8d5f-4b4b-99e2-f7dc2833c76b"
  name          = "Sammy Hauck"
  secret_id     = "...my_secret_id..."
  workspace_id  = "566b4ade-0498-4ec4-8fd8-ad9161a05c5e"
}