resource "airbyte_source_brevo" "my_source_brevo" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2020-11-02T09:08:40.811Z"
  }
  definition_id = "d0e8f2a3-7cc1-4fbe-8883-da2fecd2cab2"
  name          = "Darin Adams"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6002c3cc-123e-4878-bd50-d4d2b80c50dc"
}