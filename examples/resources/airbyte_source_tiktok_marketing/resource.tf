resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 5
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-05-10"
    include_deleted = false
    start_date      = "2022-08-15"
  }
  definition_id = "eb5b6f75-d446-4aae-b18d-05d9d9e1d46f"
  name          = "Marc Boyer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "54e9e7e5-7484-4de0-aaba-6f0f14e7378b"
}