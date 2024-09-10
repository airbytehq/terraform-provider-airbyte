resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 6
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-01-13"
    include_deleted = true
    start_date      = "2021-09-07"
  }
  definition_id = "e012beba-22c9-4964-9ef6-30f5d8739c0e"
  name          = "Hazel Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ddb04c9-bce3-487d-a644-4a186797a763"
}