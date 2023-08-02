resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account     = "...my_account..."
    database    = "...my_database..."
    engine      = "...my_engine..."
    host        = "api.app.firebolt.io"
    password    = "...my_password..."
    source_type = "firebolt"
    username    = "username@email.com"
  }
  name         = "Hector Yundt"
  secret_id    = "...my_secretId..."
  workspace_id = "d7993900-66a6-4d2d-8003-55338cec086f"
}