resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Efren18@yahoo.com"
    enable_experimental_streams = false
    expand_issue_changelog      = false
    expand_issue_transition     = false
    issues_stream_expand_with = [
      "renderedFields",
    ]
    lookback_window_minutes = 60
    projects = [
      "...",
    ]
    render_fields = false
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "1b048892-6ab9-4cfe-ae85-afcc9acc6e7e"
  name          = "Herman Schowalter"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c9f1975-11d6-4247-9658-5095001aad5e"
}