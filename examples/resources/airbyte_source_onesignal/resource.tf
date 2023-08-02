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
    source_type   = "onesignal"
    start_date    = "2020-11-16T00:00:00Z"
    user_auth_key = "...my_user_auth_key..."
  }
  name         = "Ms. Regina Steuber"
  secret_id    = "...my_secretId..."
  workspace_id = "38f1edb7-8359-4ecc-9cb8-60f8cd580ba7"
}