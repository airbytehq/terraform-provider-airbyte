resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "US"
    private_key   = "...my_private_key..."
    start_date    = "2023-08-01T00:00:00Z"
  }
  definition_id = "0113c2d3-cb5e-4aa6-8b86-a42dbbb853ec"
  name          = "Jeannette Hayes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a18b0d79-003d-4e8d-a443-bfaadd29a6df"
}