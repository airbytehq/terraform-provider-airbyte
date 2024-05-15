resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  definition_id = "e44a4dc9-70c0-4785-b3a2-0ac990f9b2ce"
  name          = "Kristi Jaskolski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "85150ea8-6120-4cd6-98d7-42806812ca7b"
}