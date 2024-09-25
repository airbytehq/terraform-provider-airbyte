resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "...",
    ]
    ad_statuses = [
      "DELETED",
    ]
    adset_statuses = [
      "PAUSED",
    ]
    campaign_statuses = [
      "IN_PROCESS",
    ]
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
          "action_type",
        ]
        action_report_time = "mixed"
        breakdowns = [
          "skan_conversion_id",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "account_currency",
        ]
        insights_job_timeout     = 10
        insights_lookback_window = 0
        level                    = "account"
        name                     = "Kara Macejkovic"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 10
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    insights_job_timeout     = 8
    insights_lookback_window = 7
    page_size                = 10
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "6a32dc31-e1b4-4b67-a953-bf2defea2fd1"
  name          = "Dana Wuckert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d3631398-5539-4f35-ad32-06afb3a724a6"
}