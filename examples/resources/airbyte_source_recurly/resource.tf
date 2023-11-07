resource "airbyte_source_recurly" "my_source_recurly" {
  configuration = {
    api_key    = "...my_api_key..."
    begin_time = "2021-12-01T00:00:00"
    end_time   = "2021-12-01T00:00:00"
  }
  name         = "Ms. Jeffery Russel"
  secret_id    = "...my_secret_id..."
  workspace_id = "c1950da3-1ebe-4cd9-b5a7-5a7c5fc21d72"
}