resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = false
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25"
    streams_criteria = [
      {
        criteria = "ends not with"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "3692db06-d3b4-499d-8bda-e34afcb06318"
  name          = "Ms. Donna Krajcik"
  secret_id     = "...my_secret_id..."
  workspace_id  = "44d2b896-5caa-4bab-ae9d-6378e7243c02"
}