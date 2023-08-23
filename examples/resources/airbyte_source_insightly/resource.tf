resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    source_type = "insightly"
    start_date  = "2021-03-01T00:00:00Z"
    token       = "...my_token..."
  }
  name         = "Arturo Marks"
  secret_id    = "...my_secret_id..."
  workspace_id = "8dbda6a6-1efa-4219-8258-fd0a9eba47f7"
}