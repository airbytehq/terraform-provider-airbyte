resource "airbyte_source_awin_advertiser" "my_source_awinadvertiser" {
  configuration = {
    advertiser_id  = "...my_advertiser_id..."
    api_key        = "...my_api_key..."
    lookback_days  = 9
    start_date     = "2022-12-29"
    step_increment = "...my_step_increment..."
  }
  definition_id = "dec8d908-42b2-41d2-b7fb-49650274bef3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d0fe6057-baab-4b43-8d46-f531b42f0f60"
}