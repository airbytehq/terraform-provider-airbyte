resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.atlassian.net"
    email                       = "...my_email..."
    enable_experimental_streams = false
    lookback_window_minutes     = 60
    projects = [
      "..."
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "949473c3-da2c-444e-bfcd-8f8d84c88b15"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "126f780d-bef6-41d4-af4f-97391ac97b8d"
}