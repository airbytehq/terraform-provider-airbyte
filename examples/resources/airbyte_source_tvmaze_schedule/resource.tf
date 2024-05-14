resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "GB"
  }
  definition_id = "48acadc0-6400-4b7b-98d1-3a2ccf2b1ade"
  name          = "Ollie Gleason"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4bfb0e1b-3d2b-489b-a6a8-838cf8d227f3"
}