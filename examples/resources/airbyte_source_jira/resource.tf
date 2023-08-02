resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Michele33@gmail.com"
    enable_experimental_streams = true
    expand_issue_changelog      = false
    projects = [
      "...",
    ]
    render_fields = false
    source_type   = "jira"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Grace Goyette"
  secret_id    = "...my_secretId..."
  workspace_id = "f7b79dfe-b77a-45c3-8d4b-af91e506ef89"
}