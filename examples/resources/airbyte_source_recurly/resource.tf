resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key     = "...my_api_key..."
    begin_time  = "2021-12-01T00:00:00"
    end_time    = "2021-12-01T00:00:00"
    source_type = "recurly"
  }
  name         = "Iris Schimmel MD"
  workspace_id = "85f8bc2c-aba8-4da4-927d-d597ff4711aa"
}