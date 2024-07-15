resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "2016-01-01"
  }
  definition_id = "e0e5e5f3-86d0-4ac5-af3c-6558d9b03d25"
  name          = "Percy Walker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "badc477c-b62b-459b-9f1e-e4249578a5bc"
}