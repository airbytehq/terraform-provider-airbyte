resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    attribution_window    = 3
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-11-01"
    include_deleted = false
    start_date      = "2016-09-01"
  }
  definition_id = "4bfac00d-ce15-44ff-95b9-9e3c3e8fbd35"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "972417c8-071a-43d1-8082-a2d88ae006dc"
}