resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "recharge"
    start_date   = "2021-05-14T00:00:00Z"
  }
  name         = "Angel Stokes"
  secret_id    = "...my_secret_id..."
  workspace_id = "7ff4711a-a1bc-474b-86ce-cc74f77b4848"
}