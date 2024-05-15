resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "impression"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "7_DAY"
    view_attribution_window     = "7_DAY"
  }
  definition_id = "9e175304-065f-4646-b239-01f87c9df1af"
  name          = "Mr. Irvin Hettinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5d0cf40-3b28-456e-98a6-950f0007e330"
}