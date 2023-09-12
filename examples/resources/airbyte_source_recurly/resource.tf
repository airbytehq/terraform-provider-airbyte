resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key     = "...my_api_key..."
    begin_time  = "2021-12-01T00:00:00"
    end_time    = "2021-12-01T00:00:00"
    source_type = "recurly"
  }
  name         = "Josephine Dibbert"
  secret_id    = "...my_secret_id..."
  workspace_id = "7e1763c5-208c-423e-9802-d82f0d45eb4a"
}