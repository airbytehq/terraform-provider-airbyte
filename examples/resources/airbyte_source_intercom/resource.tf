resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token            = "...my_access_token..."
    activity_logs_time_step = 30
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    start_date              = "2020-11-16T00:00:00Z"
  }
  definition_id = "7cb4fc24-002c-4a0d-8171-1f25a28dde04"
  name          = "Marshall Schinner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "be57bfa4-6127-4442-b75e-d08074e17a64"
}