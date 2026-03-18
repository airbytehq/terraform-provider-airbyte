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
    lookback_window = 0
    num_workers     = 3
    start_date      = "2021-05-17"
  }
  definition_id = "137ece28-5434-455c-8f34-69dc3782f451"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6809f5e-180e-4fd3-8ff7-576172bbda48"
}