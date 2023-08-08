resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    source_type = "insightly"
    start_date  = "2021-03-01T00:00:00Z"
    token       = "...my_token..."
  }
  name         = "Eduardo Wolff"
  secret_id    = "...my_secret_id..."
  workspace_id = "3b4257b9-92c8-4dbd-a6a6-1efa2198258f"
}