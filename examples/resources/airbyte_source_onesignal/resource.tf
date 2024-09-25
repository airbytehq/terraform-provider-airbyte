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
  definition_id = "9fe4ef64-9387-45b5-a324-c6128aabbad0"
  name          = "Ethel Abernathy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2c3e8228-2510-41e3-a25c-69948d038885"
}