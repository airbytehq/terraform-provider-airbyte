resource "airbyte_source_onesignal" "my_source_onesignal" {
  configuration = {
    applications = [
      {
        app_api_key = "...my_app_api_key..."
        app_id      = "...my_app_id..."
        app_name    = "...my_app_name..."
      }
    ]
    outcome_names = "os__session_duration.count,os__click.count,CustomOutcomeName.sum"
    start_date    = "2020-11-16T00:00:00Z"
    user_auth_key = "...my_user_auth_key..."
  }
  definition_id = "9608243e-fba5-4235-8589-eba62995ea27"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "92405047-4f40-4ac1-b6d6-132d4ec3edbf"
}