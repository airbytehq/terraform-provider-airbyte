resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "impression"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "28_DAY"
    view_attribution_window     = "3_HOUR"
  }
  definition_id = "fcf99c41-876f-4a0c-bc1b-99ee1e960566"
  name          = "Dr. Beatrice Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1b3114e9-ed57-4541-8361-2b0e8c8cf11a"
}