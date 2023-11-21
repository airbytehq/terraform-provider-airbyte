resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key             = "...my_api_key..."
    domain              = "myaccount.freshdesk.com"
    requests_per_minute = 1
    start_date          = "2020-12-01T00:00:00Z"
  }
  definition_id = "9fe1bd22-2412-41e6-b15b-e306a4e83994"
  name          = "Frances Farrell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c75d4c70-b588-42c8-81a0-878bfdf7e2fa"
}