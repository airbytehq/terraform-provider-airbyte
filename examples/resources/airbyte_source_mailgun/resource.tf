resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "c1488faa-411d-49d9-a226-9c9d648f0bcc"
  name          = "Ervin Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5af6ed3c-47c1-4416-8113-c2d3cb5eaa64"
}