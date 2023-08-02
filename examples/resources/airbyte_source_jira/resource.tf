resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.atlassian.net"
    email                       = "Annabelle_Sporer@gmail.com"
    enable_experimental_streams = false
    expand_issue_changelog      = true
    projects = [
      "...",
    ]
    render_fields = true
    source_type   = "jira"
    start_date    = "2021-03-01T00:00:00Z"
  }
  name         = "Emilio Ratke"
  workspace_id = "c20cb67f-c4b4-425e-99e6-234c9f7b79df"
}