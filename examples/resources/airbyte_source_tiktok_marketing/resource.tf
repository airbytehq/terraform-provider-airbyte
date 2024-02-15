resource "airbyte_source_tiktok_marketing" "my_source_tiktokmarketing" {
  configuration = {
    attribution_window = 3
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        advertiser_id = "...my_advertiser_id..."
        app_id        = "...my_app_id..."
        secret        = "...my_secret..."
      }
    }
    end_date        = "2022-06-11"
    include_deleted = true
    start_date      = "2021-06-15"
  }
  definition_id = "5c77eadf-0c9c-4e16-abe8-5fa64aee8d2b"
  name          = "Merle Grant"
  secret_id     = "...my_secret_id..."
  workspace_id  = "efceb9e0-d54b-4089-8bdd-98fe3f92c06a"
}