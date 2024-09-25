resource "airbyte_source_outbrain_amplify" "my_source_outbrainamplify" {
  configuration = {
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    end_date               = "...my_end_date..."
    geo_location_breakdown = "country"
    report_granularity     = "monthly"
    start_date             = "...my_start_date..."
  }
  definition_id = "5272c209-71d5-444a-a5a7-d2b4609d4ec6"
  name          = "Melanie Kshlerin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "68cce933-94d8-4a35-9b32-f900f8cfe737"
}