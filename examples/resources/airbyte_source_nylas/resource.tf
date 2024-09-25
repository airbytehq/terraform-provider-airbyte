resource "airbyte_source_nylas" "my_source_nylas" {
  configuration = {
    api_key    = "...my_api_key..."
    api_server = "eu"
    end_date   = "2020-02-11T09:20:19.816Z"
    start_date = "2022-07-25T10:39:24.379Z"
  }
  definition_id = "0497cb97-4a7d-4800-9cbe-4b7daa2d7b02"
  name          = "Miss Veronica Hilll"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da4df01c-f56e-4e29-8adb-c5bd340789cf"
}