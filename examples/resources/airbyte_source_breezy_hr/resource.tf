resource "airbyte_source_breezy_hr" "my_source_breezyhr" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = "...my_company_id..."
  }
  definition_id = "00c8feba-7b45-4cfe-a08a-bdda328f6c37"
  name          = "Alyssa Anderson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "63420a6a-3ab4-4d44-b55b-910e5c999e89"
}