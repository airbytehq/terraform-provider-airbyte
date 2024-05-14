resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "c8bd1ccc-ad3b-41c4-8652-93193648ca78"
  name          = "Mamie Hettinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "52384bdb-821f-49c8-afa4-0dc207c50e6f"
}