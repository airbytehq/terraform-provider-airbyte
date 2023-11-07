resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 9
    credentials = {
      source_tiktok_marketing_o_auth2_0 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-08-29"
    include_deleted = false
    start_date      = "2022-12-05"
  }
  name         = "Ms. Eloise Anderson"
  secret_id    = "...my_secret_id..."
  workspace_id = "7793827c-06dd-486b-8fbd-e6ae53955108"
}