resource "airbyte_source_typeform" "my_source_typeform" {
  configuration = {
    form_ids = [
      "...",
    ]
    source_type = "typeform"
    start_date  = "2020-01-01T00:00:00Z"
    token       = "...my_token..."
  }
  name         = "Lula Kuphal"
  secret_id    = "...my_secretId..."
  workspace_id = "065c0efa-6f93-4b90-a1b8-c95be1254b73"
}