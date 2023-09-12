resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    source_type     = "my-hours"
    start_date      = "2016-01-01"
  }
  name         = "Elsa Kerluke"
  secret_id    = "...my_secret_id..."
  workspace_id = "922151fe-1712-4099-853e-9f543d854439"
}