resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    source_type     = "my-hours"
    start_date      = "%Y-%m-%d"
  }
  name         = "Allen Grant"
  secret_id    = "...my_secret_id..."
  workspace_id = "dfa4a197-f6de-4922-951f-e1712099853e"
}