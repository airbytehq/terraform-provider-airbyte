resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  definition_id = "bee3dbad-c477-4cb6-ab59-b9f1ee424957"
  name          = "Hubert Hilpert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bbc2cb83-b2c4-4dd4-9429-07741ee0bbab"
}