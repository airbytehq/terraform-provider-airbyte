resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time          = "impression"
    client_id                   = "...my_client_id..."
    client_secret               = "...my_client_secret..."
    end_date                    = "2022-01-30"
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "1_DAY"
    view_attribution_window     = "6_HOUR"
  }
  definition_id = "85bedf1b-6a60-4ed1-862f-411dc6a0a7c7"
  name          = "Kathy Franecki III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4dd37177-b9cd-4d67-9dcd-9c0fa1c23293"
}