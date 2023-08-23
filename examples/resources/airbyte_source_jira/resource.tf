resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.atlassian.net"
    email                       = "Ottilie.McCullough73@gmail.com"
    enable_experimental_streams = false
    expand_issue_changelog      = true
    projects = [
      "...",
    ]
    render_fields = false
    source_type   = "jira"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Mathew Klocko"
  secret_id    = "...my_secret_id..."
  workspace_id = "c38d4baf-91e5-406e-b890-a54b475f16f5"
}