resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Jaquelin_Padberg90@yahoo.com"
    enable_experimental_streams = false
    expand_issue_changelog      = false
    expand_issue_transition     = false
    issues_stream_expand_with = [
      "transitions",
    ]
    lookback_window_minutes = 60
    projects = [
      "...",
    ]
    render_fields = false
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "fd0612ff-d3df-4119-b8b3-85957e3c921c"
  name          = "Perry Cronin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a21155c5-4910-4609-be9a-984e4b07bcaf"
}