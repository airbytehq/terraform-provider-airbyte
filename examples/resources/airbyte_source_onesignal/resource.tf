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
  definition_id = "bd591e25-444d-4223-8fd1-d8ea1c7d4332"
  name          = "Shawna Pfeffer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c1a8dab7-e73a-4597-9814-e4dc1f633abc"
}