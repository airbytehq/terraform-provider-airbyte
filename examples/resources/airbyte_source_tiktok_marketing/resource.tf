resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 5
    credentials = {
      source_tiktok_marketing_authentication_method_o_auth2_0 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        auth_type     = "oauth2.0"
        secret        = "...my_secret..."
      }
    }
    end_date        = "2021-10-08"
    include_deleted = false
    source_type     = "tiktok-marketing"
    start_date      = "2022-12-21"
  }
  name         = "Mrs. Joey Mueller"
  secret_id    = "...my_secret_id..."
  workspace_id = "4d93a74c-0252-4fe3-b4b4-db8b778ebb6e"
}