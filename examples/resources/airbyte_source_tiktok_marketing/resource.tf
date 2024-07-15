resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 10
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2021-02-26"
    include_deleted = true
    start_date      = "2021-10-12"
  }
  definition_id = "9214f3ff-a48a-4cad-8064-00b7b58d13a2"
  name          = "Spencer Witting"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1ade2f49-84bf-4b0e-9b3d-2b89b26a8838"
}