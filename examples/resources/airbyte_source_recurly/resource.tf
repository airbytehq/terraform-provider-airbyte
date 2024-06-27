resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "2d7b0215-50aa-4da4-9f01-cf56ee294adb"
  name          = "Pedro Rodriguez"
  secret_id     = "...my_secret_id..."
  workspace_id  = "40789cf0-b8d2-4c04-9244-36569fd64cd2"
}