resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "country"
    report_granularity     = "daily"
    start_date             = "...my_start_date..."
  }
  definition_id = "2dc402ae-f616-435a-b9f9-4f985aa22e67"
  name          = "Della Koepp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e4e4244a-41ce-4525-b489-3048e9c1af99"
}