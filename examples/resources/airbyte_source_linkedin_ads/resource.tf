resource "airbyte_source_linkedin_ads" "my_source_linkedinads" {
  configuration = {
    account_ids = [
      5,
    ]
    credentials = {
      source_linkedin_ads_authentication_access_token = {
        access_token = "...my_access_token..."
        auth_method  = "access_token"
      }
    }
    source_type = "linkedin-ads"
    start_date  = "2021-05-17"
  }
  name         = "Martin Bahringer"
  secret_id    = "...my_secretId..."
  workspace_id = "7320590c-cc10-4964-8031-3b3e5044f65f"
}