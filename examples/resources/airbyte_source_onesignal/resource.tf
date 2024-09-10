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
  definition_id = "db48a2cc-4047-4b12-8c3e-cc1558e983f3"
  name          = "Patty Powlowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f8e75b95-ee5d-4d11-877a-4e3aa4d1c74f"
}