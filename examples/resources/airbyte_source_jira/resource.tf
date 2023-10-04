resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Karlee_Fadel@yahoo.com"
    enable_experimental_streams = true
    expand_issue_changelog      = true
    projects = [
      "...",
    ]
    render_fields = false
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Ida Rath"
  secret_id    = "...my_secret_id..."
  workspace_id = "8621a877-d2e6-425c-9d80-ba5ff53c6fc1"
}