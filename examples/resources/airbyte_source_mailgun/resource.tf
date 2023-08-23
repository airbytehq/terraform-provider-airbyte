resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    source_type   = "mailgun"
    start_date    = "2023-08-01T00:00:00Z"
  }
  name         = "Lynda Schuppe"
  secret_id    = "...my_secret_id..."
  workspace_id = "5f9e5d75-1c9f-4e8f-b502-bfdc3450841f"
}