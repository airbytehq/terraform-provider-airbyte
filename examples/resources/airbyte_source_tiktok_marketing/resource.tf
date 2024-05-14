resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 7
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-04-24"
    include_deleted = false
    start_date      = "2022-11-25"
  }
  definition_id = "a5b009f2-9606-4a36-9ac9-9592aaeb21d8"
  name          = "Geoffrey Franecki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "558d4aa1-770f-4e21-a7b0-3b315af19bc4"
}