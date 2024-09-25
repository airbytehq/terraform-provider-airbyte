resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token            = "...my_access_token..."
    activity_logs_time_step = 10
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    start_date              = "2020-11-16T00:00:00Z"
  }
  definition_id = "20cd618d-7428-4068-92ca-7b2695261555"
  name          = "Mrs. Maggie Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "98a3f979-9a12-4d6e-b3e6-6d700d477245"
}