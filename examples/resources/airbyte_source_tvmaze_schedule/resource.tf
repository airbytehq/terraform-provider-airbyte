resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "global"
  }
  definition_id = "fe3f7d5a-433d-430c-a4aa-9f684d9ab345"
  name          = "Ms. Moses Dibbert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb2e52a8-6adb-4b57-85cb-e7ccff9d0724"
}