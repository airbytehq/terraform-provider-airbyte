resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "b6356d53-3916-430f-92f1-31d4fbef253f"
  name          = "Florence Padberg I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5dc90f63-794a-497d-9acf-56253a66e5ad"
}