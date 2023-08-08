resource "airbyte_source_recharge" "my_source_recharge" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "recharge"
    start_date   = "2021-05-14T00:00:00Z"
  }
  name         = "Ollie Osinski"
  secret_id    = "...my_secret_id..."
  workspace_id = "5512f06d-4e5b-472f-8f54-8568a0424e00"
}