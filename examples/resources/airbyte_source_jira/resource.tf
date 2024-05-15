resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.atlassian.net"
    email                       = "Antonietta61@yahoo.com"
    enable_experimental_streams = true
    expand_issue_changelog      = true
    expand_issue_transition     = true
    issues_stream_expand_with = [
      "changelog",
    ]
    lookback_window_minutes = 60
    projects = [
      "...",
    ]
    render_fields = true
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "70eb17cb-4fc2-4400-aca0-d01711f25a28"
  name          = "Mrs. Marty Treutel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ce3be57-bfa4-4612-b442-775ed08074e1"
}