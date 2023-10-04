resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  name         = "Miguel McLaughlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "517f0e32-c2e3-402e-ade9-2b3e43098446"
}