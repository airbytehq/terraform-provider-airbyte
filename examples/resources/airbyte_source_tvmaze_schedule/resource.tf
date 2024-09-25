resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "global"
  }
  definition_id = "f6a8328b-9367-4edf-a4a3-46dad742eb3f"
  name          = "Mr. Jack Dach"
  secret_id     = "...my_secret_id..."
  workspace_id  = "70668071-f391-47b5-a4a0-ba6fe0b4bda7"
}