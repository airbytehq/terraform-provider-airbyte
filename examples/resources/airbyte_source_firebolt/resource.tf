resource "airbyte_source_firebolt" "my_source_firebolt" {
  configuration = {
    account  = "...my_account..."
    database = "...my_database..."
    engine   = "...my_engine..."
    host     = "api.app.firebolt.io"
    password = "...my_password..."
    username = "username@email.com"
  }
  definition_id = "e1d4b428-b10c-462a-aeab-6a16bc0f1be5"
  name          = "Laurie Kuhlman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7324c6ca-7fcd-4ac6-b878-54b69c42e8b9"
}