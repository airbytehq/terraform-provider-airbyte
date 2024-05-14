resource "airbyte_source_nytimes" "my_source_nytimes" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "1851-01"
    period     = "1"
    share_type = "facebook"
    start_date = "1851-01"
  }
  definition_id = "5f386d0a-c5af-43c6-958d-9b03d25bee3d"
  name          = "Dana Skiles"
  secret_id     = "...my_secret_id..."
  workspace_id  = "77cb62b5-9b9f-41ee-8249-578a5bcbbc2c"
}