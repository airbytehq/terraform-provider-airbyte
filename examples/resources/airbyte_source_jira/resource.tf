resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Hayley_Rohan@hotmail.com"
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
    render_fields = false
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "2eafdc45-3fb6-4a01-92c4-47712b4a0208"
  name          = "Lee Aufderhar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "beffb8d9-7651-4059-b440-a5f2f61a4e46"
}