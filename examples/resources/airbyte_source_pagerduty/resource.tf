resource "airbyte_source_pagerduty" "my_source_pagerduty" {
  configuration = {
    cutoff_days      = 1
    default_severity = "Sev1"
    exclude_services = [
      "..."
    ]
    incident_log_entries_overview = false
    max_retries                   = 3
    page_size                     = 2
    service_details = [
      "auto_pause_notifications_parameters"
    ]
    token = "...my_token..."
  }
  definition_id = "473565ae-bb95-422e-808a-c9385f20316d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "52ab2c66-18dd-4278-bcd7-b9cb077d2cf2"
}