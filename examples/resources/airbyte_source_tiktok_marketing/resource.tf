resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 8
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-04-17"
    include_deleted = true
    start_date      = "2021-05-10"
  }
  definition_id = "13a2ccf2-b1ad-4e2f-8984-bfb0e1b3d2b8"
  name          = "Jean Dare"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8838cf8d-227f-4318-9424-0654f4782740"
}