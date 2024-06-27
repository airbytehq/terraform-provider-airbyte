resource "airbyte_source_onesignal" "my_source_onesignal" {
  configuration = {
    applications = [
      {
        app_api_key = "...my_app_api_key..."
        app_id      = "...my_app_id..."
        app_name    = "...my_app_name..."
      },
    ]
    outcome_names = "os__session_duration.count,os__click.count,CustomOutcomeName.sum"
    start_date    = "2020-11-16T00:00:00Z"
    user_auth_key = "...my_user_auth_key..."
  }
  definition_id = "0dfc3504-1fcd-4cac-a226-2ef24d92369b"
  name          = "Shawna Wilkinson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7ba288f1-0a06-435f-b19f-388685d8941e"
}