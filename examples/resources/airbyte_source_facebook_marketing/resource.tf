resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
  configuration = {
    access_token                  = "...my_access_token..."
    account_id                    = "111111111111111"
    action_breakdowns_allow_empty = false
    client_id                     = "...my_client_id..."
    client_secret                 = "...my_client_secret..."
    custom_insights = [
      {
        action_breakdowns = [
          "action_target_id",
        ]
        action_report_time = "impression"
        breakdowns = [
          "age",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "estimated_ad_recall_rate_lower_bound",
        ]
        insights_lookback_window = 6
        level                    = "adset"
        name                     = "Vera Bernhard"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 7
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    include_deleted          = false
    insights_lookback_window = 7
    max_batch_size           = 4
    page_size                = 3
    source_type              = "facebook-marketing"
    start_date               = "2017-01-25T00:00:00Z"
  }
  name         = "Dr. Dorothy Lockman"
  secret_id    = "...my_secret_id..."
  workspace_id = "0bcacc6c-bd6b-45f3-ac90-9304f926bad2"
}