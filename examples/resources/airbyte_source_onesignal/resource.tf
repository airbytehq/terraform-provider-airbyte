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
  definition_id = "ee5b7122-5778-4f7a-823c-1e08d80f694c"
  name          = "Nora Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0f84ccba-d71d-4ab0-b801-4a124b6e7b20"
}