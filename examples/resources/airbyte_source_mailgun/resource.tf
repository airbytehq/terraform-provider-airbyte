resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    source_type   = "mailgun"
    start_date    = "2023-08-01T00:00:00Z"
  }
  name         = "Sheri Mayert"
  secret_id    = "...my_secret_id..."
  workspace_id = "8f7502bf-dc34-4508-81f1-764456379f3f"
}