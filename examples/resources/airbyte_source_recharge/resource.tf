resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2021-05-14T00:00:00Z"
  }
  name         = "Ms. Grant Krajcik I"
  secret_id    = "...my_secret_id..."
  workspace_id = "9037c7ee-f972-4df3-814a-349fde89ab27"
}