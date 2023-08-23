resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      source_outbrain_amplify_authentication_method_access_token = {
        access_token = "...my_access_token..."
        type         = "access_token"
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "region"
    report_granularity     = "weekly"
    source_type            = "outbrain-amplify"
    start_date             = "...my_start_date..."
  }
  name         = "Johanna Runolfsson Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "c65b037b-b8e0-4cc8-8518-7e4de04af28c"
}