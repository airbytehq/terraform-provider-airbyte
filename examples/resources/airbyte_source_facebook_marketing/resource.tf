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
          "action_device",
        ]
        action_report_time = "mixed"
        breakdowns = [
          "platform_position",
        ]
        end_date = "2017-01-26T00:00:00Z"
        fields = [
          "place_page_name",
        ]
        insights_lookback_window = 5
        level                    = "campaign"
        name                     = "Delia Dicki"
        start_date               = "2017-01-25T00:00:00Z"
        time_increment           = 8
      },
    ]
    end_date                 = "2017-01-26T00:00:00Z"
    fetch_thumbnail_images   = false
    include_deleted          = false
    insights_lookback_window = 1
    max_batch_size           = 9
    page_size                = 1
    start_date               = "2017-01-25T00:00:00Z"
  }
  name         = "Willis Hauck"
  secret_id    = "...my_secret_id..."
  workspace_id = "f001ddb3-cf07-44d6-a7d2-01b0d069bb26"
}