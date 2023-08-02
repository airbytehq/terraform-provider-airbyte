resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      8,
    ]
    credentials = {
      access_token = "...my_access_token..."
      auth_method  = "access_token"
    }
    source_type = "linkedin-ads"
    start_date  = "2021-05-17"
  }
  name         = "Kelly Deckow"
  workspace_id = "3e66bd8f-e5d0-40b9-b9ef-20387320590c"
}