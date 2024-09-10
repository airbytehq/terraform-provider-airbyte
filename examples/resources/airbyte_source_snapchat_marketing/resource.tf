resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "conversion"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "1_DAY"
    view_attribution_window     = "1_DAY"
  }
  definition_id = "df5c3592-a5dd-47dd-bd79-7d2eb894fd68"
  name          = "Lynda Keebler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b1b8dbba-eb9b-45c2-a2ee-8b85f41cf2ef"
}