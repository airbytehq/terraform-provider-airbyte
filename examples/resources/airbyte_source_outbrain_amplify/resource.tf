resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "country"
    report_granularity     = "weekly"
    start_date             = "...my_start_date..."
  }
  definition_id = "ff19f388-685d-4894-9e7d-b0723f94739c"
  name          = "Jaime Bashirian"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b712257-78f7-4a02-bc1e-08d80f694c48"
}