resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  name         = "Stacey Herzog"
  secret_id    = "...my_secret_id..."
  workspace_id = "57a2c261-8fe1-4b91-9cce-8e649d7675fb"
}