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
  definition_id = "f388685d-8941-4e7d-b072-3f94739cc80e"
  name          = "Pedro Prohaska Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "25778f7a-023c-41e0-8d80-f694c48e9d0f"
}