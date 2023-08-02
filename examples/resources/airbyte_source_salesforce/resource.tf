resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    auth_type     = "Client"
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    is_sandbox    = true
    refresh_token = "...my_refresh_token..."
    source_type   = "salesforce"
    start_date    = "2021-07-25T00:00:00Z"
    streams_criteria = [
      {
        criteria = "ends with"
        value    = "...my_value..."
      },
    ]
  }
  name         = "Leonard Fisher"
  secret_id    = "...my_secretId..."
  workspace_id = "79fb9de4-032b-4a26-bd36-8ba9216bcb41"
}