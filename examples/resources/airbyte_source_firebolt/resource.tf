resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account  = "...my_account..."
    database = "...my_database..."
    engine   = "...my_engine..."
    host     = "api.app.firebolt.io"
    password = "...my_password..."
    username = "username@email.com"
  }
  definition_id = "bba48ed6-d0ea-4f7f-94c7-c369f9cb0a3d"
  name          = "Ms. Paul Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aef770c8-1f95-4c5b-8dd2-d32b37f6fec5"
}