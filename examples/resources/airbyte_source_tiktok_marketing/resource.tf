resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 3
    credentials = {
      source_tiktok_marketing_o_auth2_0 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-10-15"
    include_deleted = false
    start_date      = "2022-12-08"
  }
  definition_id = "fd338f32-2856-4cd8-8e7e-494b9e5830e9"
  name          = "Elijah Prosacco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "12cdcae9-f85c-4701-b380-526f8856cdf3"
}