resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "1af8b9bb-4850-4d65-8be1-e785de7e327e"
  name          = "Georgia Ledner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "126eb569-4431-42d5-95e6-a2d83c0cc98d"
}