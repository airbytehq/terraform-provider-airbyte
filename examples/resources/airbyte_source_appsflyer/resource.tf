resource "airbyte_source_appsflyer" "my_source_appsflyer" {
  configuration = {
    api_token  = "...my_api_token..."
    app_id     = "...my_app_id..."
    start_date = "2021-11-16"
    timezone   = "US/Pacific"
  }
  definition_id = "930e1fc1-26ff-4f42-a25d-a8f5551dc0ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "94370be7-f5a5-4231-bd63-0cfb7dc2f074"
}