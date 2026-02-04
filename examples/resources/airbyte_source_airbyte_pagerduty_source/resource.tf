resource "airbyte_source_airbyte_pagerduty_source" "my_source_airbytepagerdutysource" {
  configuration = {
    cutoff_days                   = 3.54
    default_severity              = "Sev1"
    incident_log_entries_overview = true
    page_size                     = 24.53
    token                         = "...my_token..."
  }
  definition_id = "73cba3f0-4fd9-4650-94c3-1f947511f1db"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2cc0e896-a48e-4d42-ad26-a2de69852727"
}