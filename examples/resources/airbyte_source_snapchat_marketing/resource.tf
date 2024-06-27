resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "impression"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "7_DAY"
    view_attribution_window     = "1_HOUR"
  }
  definition_id = "5b0d51b3-114e-49ed-9754-1c3612b0e8c8"
  name          = "Miss Emilio Botsford PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "259943df-a52a-49e4-b5ab-ffba2c1e7b69"
}