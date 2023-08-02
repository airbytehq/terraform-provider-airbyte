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
  name         = "Kayla Mertz"
  workspace_id = "1876c6ab-21d2-49df-894d-6fecd7993900"
}