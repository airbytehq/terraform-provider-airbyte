resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "myaccount.freshdesk.com"
    requests_per_minute = 3
    source_type         = "freshdesk"
    start_date          = "2020-12-01T00:00:00Z"
  }
  name         = "Mr. Tara Sporer"
  secret_id    = "...my_secretId..."
  workspace_id = "3d48e935-c2c9-4e81-b30b-e3e43202d721"
}