resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "9c61d27b-bad3-4f0b-b8ca-743bfb1506e5"
  name          = "Rafael Schumm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8b49c82f-283f-4df1-b362-a3ef9cacc879"
}