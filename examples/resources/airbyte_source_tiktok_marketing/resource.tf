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
    end_date        = "2022-03-21"
    include_deleted = false
    start_date      = "2022-09-26"
  }
  definition_id = "18c27e2e-49fb-4e84-b53d-48e30cccb1d3"
  name          = "Jody Spencer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "649b7a58-a563-4641-bd33-8f322856cd88"
}