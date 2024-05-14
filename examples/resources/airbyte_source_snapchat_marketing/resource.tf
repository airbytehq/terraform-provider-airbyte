resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "conversion"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "28_DAY"
    view_attribution_window     = "1_DAY"
  }
  definition_id = "6c18f201-7e88-4b7a-8364-f95e84efb6a9"
  name          = "Jill Feil"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1882dc6e-a377-4e2f-ba67-44848ac2b04b"
}