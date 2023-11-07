resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Charles Koss"
  secret_id    = "...my_secret_id..."
  workspace_id = "69873338-6b53-4a47-9a08-05ff1793bf9b"
}