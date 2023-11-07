resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account  = "...my_account..."
    database = "...my_database..."
    engine   = "...my_engine..."
    host     = "api.app.firebolt.io"
    password = "...my_password..."
    username = "username@email.com"
  }
  name         = "Willie Bayer"
  secret_id    = "...my_secret_id..."
  workspace_id = "1180fb2a-875a-41ca-990e-95bd1182a17e"
}