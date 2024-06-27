resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "EU"
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "ca13b1e8-9c14-488f-aa41-1d9d922269c9"
  name          = "Ricardo Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0bccdd2e-95af-46ed-bc47-c14160113c2d"
}