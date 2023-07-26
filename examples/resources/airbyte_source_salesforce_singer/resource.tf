resource "airbyte_source_salesforce_singer" "my_source_salesforcesinger" {
  configuration = {
    api_type              = "REST"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    is_sandbox            = true
    quota_percent_per_run = 60.36
    quota_percent_total   = 99.22
    refresh_token         = "...my_refresh_token..."
    source_type           = "salesforce-singer"
    start_date            = "2017-01-25T00:00:00Z"
  }
  name         = "Rene Stehr"
  workspace_id = "032ba26f-d368-4ba9-a16b-cb415835c736"
}