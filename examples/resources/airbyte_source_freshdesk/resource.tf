resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "myaccount.freshdesk.com"
    requests_per_minute = 6
    start_date          = "2020-12-01T00:00:00Z"
  }
  name         = "Kendra Pfeffer"
  secret_id    = "...my_secret_id..."
  workspace_id = "dcadad29-38da-4576-9e78-80f00a30ddef"
}