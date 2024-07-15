resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Celestino_Grimes@yahoo.com"
    enable_experimental_streams = false
    expand_issue_changelog      = true
    expand_issue_transition     = false
    issues_stream_expand_with = [
      "renderedFields",
    ]
    lookback_window_minutes = 60
    projects = [
      "...",
    ]
    render_fields = true
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "01aad5e5-f9cf-4b0d-9e8d-3acce90aeed1"
  name          = "Penny Koepp"
  secret_id     = "...my_secret_id..."
  workspace_id  = "882d54ce-598c-4c59-ab95-2f06231c57fd"
}