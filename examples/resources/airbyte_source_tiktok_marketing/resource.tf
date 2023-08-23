resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 0
    credentials = {
      source_tiktok_marketing_authentication_method_o_auth2_0 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        auth_type     = "oauth2.0"
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-04-16"
    include_deleted = true
    source_type     = "tiktok-marketing"
    start_date      = "2020-11-25"
  }
  name         = "Vicky Reichert"
  secret_id    = "...my_secret_id..."
  workspace_id = "635d5e65-da02-48c3-a951-a1e30fda9664"
}