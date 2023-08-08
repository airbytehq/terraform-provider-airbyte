resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    source_type   = "mailgun"
    start_date    = "2020-10-01 00:00:00"
  }
  name         = "Lois Ondricka"
  secret_id    = "...my_secret_id..."
  workspace_id = "a37cbaaf-4452-4c48-82c9-b2ad32dafe81"
}