resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 8
    credentials = {
      source_tiktok_marketing_authentication_method_o_auth2_0 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        auth_type     = "oauth2.0"
        secret        = "...my_secret..."
      }
    }
    end_date    = "2021-01-19"
    source_type = "tiktok-marketing"
    start_date  = "2022-09-08"
  }
  name         = "Jeremy Krajcik"
  secret_id    = "...my_secret_id..."
  workspace_id = "9e2c9e6d-10e9-4db3-ad4c-6b03108d9c33"
}