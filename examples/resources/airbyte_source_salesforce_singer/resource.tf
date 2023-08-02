resource "airbyte_source_salesforce_singer" "my_source_salesforcesinger" {
  configuration = {
    api_type              = "BULK"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    is_sandbox            = true
    quota_percent_per_run = 20.41
    quota_percent_total   = 33.56
    refresh_token         = "...my_refresh_token..."
    source_type           = "salesforce-singer"
    start_date            = "2017-01-25T00:00:00Z"
  }
  name         = "Claude Fisher"
  secret_id    = "...my_secretId..."
  workspace_id = "1723133e-dc04-46bc-9163-bbca49227c42"
}