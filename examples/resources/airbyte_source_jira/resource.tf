resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "jira.<your-domain>.com"
    email                       = "Benton_Tromp@hotmail.com"
    enable_experimental_streams = false
    expand_issue_changelog      = false
    expand_issue_transition     = true
    issues_stream_expand_with = [
      "transitions",
    ]
    projects = [
      "...",
    ]
    render_fields = true
    start_date    = "2021-03-01T00:00:00Z"
  }
  definition_id = "7e778751-26eb-4569-8431-2d5d5e6a2d83"
  name          = "Kenneth Runte"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8dd54122-5651-4393-a1b0-488926ab9cfe"
}