resource "airbyte_source_jira" "my_source_jira" {
  configuration = {
    api_token                   = "...my_api_token..."
    domain                      = "<your-domain>.jira.com"
    email                       = "Jeramie79@gmail.com"
    enable_experimental_streams = true
    lookback_window_minutes     = 60
    projects = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "8014d1f2-6365-41b7-bf9f-e0e5e5f386d0"
  name          = "Leland Herzog"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3c6558d9-b03d-425b-ae3d-badc477cb62b"
}