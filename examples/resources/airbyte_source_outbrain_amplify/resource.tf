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
  definition_id = "e9c1af99-61b1-4c88-ba57-2712d8f3b643"
  name          = "Marianne Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b32ad03f-d9a9-4d8b-a9b0-df86503c4743"
}