resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 233
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
      sandbox_access_token = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
      }
    }
    end_date        = "2022-11-01"
    include_deleted = true
    start_date      = "2022-04-25"
  }
  definition_id = "1ec33e26-a63c-4daf-be97-7f4062cb980d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "972417c8-071a-43d1-8082-a2d88ae006dc"
}