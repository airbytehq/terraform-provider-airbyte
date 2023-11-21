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
  definition_id = "58a542d5-17fc-488b-8499-8d75efedea33"
  name          = "Krystal Hamill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "15598db9-2c72-4d54-9f53-8928a50561c1"
}