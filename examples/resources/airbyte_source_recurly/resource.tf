resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  definition_id = "372c40ec-9291-4353-b954-9bcc34d389bb"
  name          = "Corey Sporer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f5b1164e-1dc4-4a01-944f-b97610a4d0de"
}