resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      source_outbrain_amplify_authentication_method_access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "country"
    report_granularity     = "monthly"
    start_date             = "...my_start_date..."
  }
  name         = "Robin Ankunding"
  secret_id    = "...my_secret_id..."
  workspace_id = "ab840e56-112c-41fd-a021-0a5cfbec2876"
}