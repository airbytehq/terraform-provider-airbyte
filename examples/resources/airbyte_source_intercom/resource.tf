resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "intercom"
    start_date   = "2020-11-16T00:00:00Z"
  }
  name         = "Randal Fadel"
  secret_id    = "...my_secret_id..."
  workspace_id = "ce036144-48c7-4977-a0ef-2f536028efee"
}