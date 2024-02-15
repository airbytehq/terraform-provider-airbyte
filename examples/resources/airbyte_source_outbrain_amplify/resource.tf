resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "region"
    report_granularity     = "monthly"
    start_date             = "...my_start_date..."
  }
  definition_id = "3b6433cb-82b3-42ad-83fd-9a9d8ba9b0df"
  name          = "Mrs. Charlie Hayes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4743ee79-bd13-4e20-8659-bbdc56c2f2e2"
}