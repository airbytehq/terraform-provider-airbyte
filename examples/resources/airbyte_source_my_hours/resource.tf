resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  definition_id = "95261555-3a71-4349-8a3f-9799a12d6e33"
  name          = "Franklin Jerde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "00d47724-56d0-4d26-9914-7bb3566ca647"
}