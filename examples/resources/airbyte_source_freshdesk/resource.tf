resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "myaccount.freshdesk.com"
    requests_per_minute = 10
    source_type         = "freshdesk"
    start_date          = "2020-12-01T00:00:00Z"
  }
  name         = "Dale Altenwerth"
  secret_id    = "...my_secret_id..."
  workspace_id = "3e43202d-7216-4576-9066-41870d9d21f9"
}