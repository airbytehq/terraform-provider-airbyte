resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time = "impression"
    ad_account_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    end_date      = "2022-01-30"
    organization_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "7_DAY"
    view_attribution_window     = "1_HOUR"
  }
  definition_id = "1299fa04-4937-407e-99e4-bc441ad499f0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a5e72bda-13a9-4a82-ab4d-94fe6a570980"
}