resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      4
    ]
    ad_analytics_reports = [
      {
        name             = "...my_name..."
        pivot_by         = "MEMBER_JOB_TITLE"
        time_granularity = "MONTHLY"
      }
    ]
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    lookback_window = 3
    num_workers     = 34
    start_date      = "2021-05-17"
  }
  definition_id = "6103991f-50f8-4ff5-a7c2-f07535bd7995"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6809f5e-180e-4fd3-8ff7-576172bbda48"
}