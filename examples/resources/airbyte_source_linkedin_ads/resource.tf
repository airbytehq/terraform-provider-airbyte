resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      9,
    ]
    ad_analytics_reports = [
      {
        name             = "Miss Bradford Reichel"
        pivot_by         = "IMPRESSION_DEVICE_TYPE"
        time_granularity = "YEARLY"
      },
    ]
    credentials = {
      access_token = {
        access_token = "...my_access_token..."
      }
    }
    start_date = "2021-05-17"
  }
  definition_id = "53fe46a1-403b-4a1b-9810-3cfb422849b5"
  name          = "Bill Koepp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd79d74a-a20e-4a69-b1b1-a975dd1b5a02"
}