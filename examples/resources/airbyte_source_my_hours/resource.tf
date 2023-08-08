resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    source_type     = "my-hours"
    start_date      = "%Y-%m-%d"
  }
  name         = "Tracy Buckridge"
  secret_id    = "...my_secret_id..."
  workspace_id = "a9f74846-e2c3-4309-9b05-36d9e75ca006"
}