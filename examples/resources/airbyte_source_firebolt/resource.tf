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
  name         = "Donna Abshire"
  secret_id    = "...my_secret_id..."
  workspace_id = "5338cec0-86fa-421e-9152-cb3119167b8e"
}