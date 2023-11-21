resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "global"
  }
  definition_id = "79666080-f3ec-4ae3-8b49-1ea7992cd63d"
  name          = "Dr. Victoria Lemke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e3f7d5a4-33d3-40ca-8aa9-f684d9ab345e"
}