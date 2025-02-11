resource "airbyte_source_gmail" "my_source_gmail" {
  configuration = {
    client_id              = "...my_client_id..."
    client_refresh_token   = "...my_client_refresh_token..."
    client_secret          = "...my_client_secret..."
    include_spam_and_trash = true
  }
  definition_id = "7955e0e4-3651-43bd-aa0d-851fff1510aa"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "91cf70dd-2922-4ba3-aa00-75c581c84b39"
}