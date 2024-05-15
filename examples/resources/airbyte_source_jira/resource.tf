resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.atlassian.net"
    email                       = "Eldridge46@yahoo.com"
    enable_experimental_streams = false
    expand_issue_changelog      = true
    expand_issue_transition     = true
    issues_stream_expand_with = [
      "transitions",
    ]
    lookback_window_minutes = 60
    projects = [
      "...",
    ]
    render_fields = true
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "1ab94fe7-5a51-43e0-8977-793827c06dd8"
  name          = "Kelli Fritsch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de6ae539-5510-48cd-8df8-fddacae8261a"
}