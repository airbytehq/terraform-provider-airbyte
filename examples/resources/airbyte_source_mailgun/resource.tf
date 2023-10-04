resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  name         = "Whitney Streich"
  secret_id    = "...my_secret_id..."
  workspace_id = "57a40e88-51a3-4541-ba6f-5d90d5a8a349"
}