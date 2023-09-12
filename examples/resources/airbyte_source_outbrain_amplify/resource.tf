resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      source_outbrain_amplify_authentication_method_access_token = {
        access_token = "...my_access_token..."
        type         = "access_token"
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "subregion"
    report_granularity     = "daily"
    source_type            = "outbrain-amplify"
    start_date             = "...my_start_date..."
  }
  name         = "Cynthia Boyer"
  secret_id    = "...my_secret_id..."
  workspace_id = "2cd55cc0-584a-4184-976d-971fc820c65b"
}