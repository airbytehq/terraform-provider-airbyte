resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      source_outbrain_amplify_access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "region"
    report_granularity     = "monthly"
    start_date             = "...my_start_date..."
  }
  definition_id = "9d0f84cc-bad7-41da-b038-014a124b6e7b"
  name          = "Donna Leannon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "37b0c992-762a-438a-a73d-79a85cb72465"
}