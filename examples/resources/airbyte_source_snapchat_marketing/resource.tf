resource "airbyte_source_snapchat_marketing" "my_source_snapchatmarketing" {
  configuration = {
    action_report_time = "conversion"
    ad_account_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    end_date              = "2022-01-30"
    organization_ids = [
      "{ \"see\": \"documentation\" }"
    ]
    refresh_token               = "...my_refresh_token..."
    start_date                  = "2022-01-01"
    swipe_up_attribution_window = "28_DAY"
    view_attribution_window     = "1_DAY"
  }
  definition_id = "200330b2-ea62-4d11-ac6d-cfe3e3f8ab2b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a5e72bda-13a9-4a82-ab4d-94fe6a570980"
}