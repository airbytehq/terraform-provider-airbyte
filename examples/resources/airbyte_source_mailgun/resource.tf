resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "EU"
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "28c6eefe-59b7-42db-a240-7ce310da7633"
  name          = "Samantha Becker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fec241f7-3646-4e1c-8795-83a59a825531"
}