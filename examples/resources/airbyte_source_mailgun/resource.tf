resource "airbyte_source_mailgun" "my_source_mailgun" {
  configuration = {
    domain_region = "...my_domain_region..."
    private_key   = "...my_private_key..."
    source_type   = "mailgun"
    start_date    = "2020-10-01 00:00:00"
  }
  name         = "Irvin Treutel"
  workspace_id = "59eb40ec-16fa-4f75-b0b5-32a4da37cbaa"
}