resource "airbyte_source_my_hours" "my_source_myhours" {
  configuration = {
    email           = "john@doe.com"
    logs_batch_size = 30
    password        = "...my_password..."
    start_date      = "%Y-%m-%d"
  }
  definition_id = "22a67dad-65e8-4ae1-9217-c0fcbe7d2d34"
  name          = "Connie Treutel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "62799cad-5c4b-4833-869d-3410e395a0aa"
}