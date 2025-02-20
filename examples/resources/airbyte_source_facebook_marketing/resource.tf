resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token = "...my_access_token..."
    account_ids = [
      "..."
    ]
    ad_statuses = [
      "ADSET_PAUSED"
    ]
    adset_statuses = [
      "IN_PROCESS"
    ]
    campaign_statuses = [
      "PAUSED"
    ]
    credentials = {
      authenticate_via_facebook_marketing_oauth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
      service_account_key_authentication = {
        access_token = "...my_access_token..."
      }
    }
    custom_insights = [
      {
        action_breakdowns = [
          "action_reaction"
        ]
        action_report_time = "impression"
        breakdowns = [
          "media_type"
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "cost_per_unique_action_type"
        ]
        insights_job_timeout     = 50
        insights_lookback_window = 9
        level                    = "account"
        name                     = "...my_name..."
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 33
      }
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    insights_job_timeout     = 55
    insights_lookback_window = 9
    page_size                = 7
    start_date               = "2017-01-25T00:00:00Z"
  }
  definition_id = "efac1af8-dd35-4940-8819-0027d27f358d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1c443315-5b54-4630-ad55-2f2c6821ece4"
}