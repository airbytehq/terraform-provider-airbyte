resource "airbyte_source_mention" "my_source_mention" {
  configuration = {
    api_key          = "...my_api_key..."
    stats_end_date   = "2022-05-13"
    stats_interval   = "P1D"
    stats_start_date = "2022-01-05T10:21:29.599Z"
  }
  definition_id = "07ad9325-90f1-4a3f-9610-b4d7e541abea"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a1f4e5ac-fef3-4693-ab2c-c34fd78362b3"
}