resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "453fb6a0-192c-4447-b12b-4a0208830aab"
  name          = "Darin Williamson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9765105-9b44-40a5-b2f6-1a4e466849f7"
}