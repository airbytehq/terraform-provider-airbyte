resource "airbyte_source_commcare" "my_source_commcare" {
  configuration = {
    api_key       = "...my_api_key..."
    app_id        = "...my_app_id..."
    project_space = "...my_project_space..."
    start_date    = "...my_start_date..."
  }
  definition_id = "57d29ab9-60c1-42c6-8fbe-eea7091d7f1c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2df44f3f-9cd6-4fa0-9aa7-198c1fe3efda"
}