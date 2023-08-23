resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    source_type                    = "tvmaze-schedule"
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "GB"
  }
  name         = "Audrey Rippin"
  secret_id    = "...my_secret_id..."
  workspace_id = "bc0f970c-42fc-49f4-8442-25e75b796065"
}