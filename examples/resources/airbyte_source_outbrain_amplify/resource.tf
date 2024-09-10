resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "subregion"
    report_granularity     = "weekly"
    start_date             = "...my_start_date..."
  }
  definition_id = "a1e0cb61-9709-45b9-9e12-6100f09eb706"
  name          = "Mrs. Randolph Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a0ac6bfa-e2b4-40c1-b3d4-d61133ddb2a9"
}