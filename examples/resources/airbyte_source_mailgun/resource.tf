resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "f7738d63-dc7b-47f8-b16c-6167f1e8f004"
  name          = "Johanna Mante"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10b5c8f2-04e6-4a77-9647-eb6babc0f9b1"
}