resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.jira.com"
    email                       = "Eldridge_Reichert@hotmail.com"
    enable_experimental_streams = false
    expand_issue_changelog      = false
    projects = [
      "...",
    ]
    render_fields = false
    source_type   = "jira"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Olive Windler"
  secret_id    = "...my_secret_id..."
  workspace_id = "0a54b475-f16f-456d-b85a-3c4ac631b99e"
}