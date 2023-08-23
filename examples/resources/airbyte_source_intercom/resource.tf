resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "intercom"
    start_date   = "2020-11-16T00:00:00Z"
  }
  name         = "Emma Lueilwitz"
  secret_id    = "...my_secret_id..."
  workspace_id = "977a0ef2-f536-4028-afee-f934152ed7e2"
}