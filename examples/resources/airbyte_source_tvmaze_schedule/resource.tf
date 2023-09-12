resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    source_type                    = "tvmaze-schedule"
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "global"
  }
  name         = "Gretchen Waters"
  secret_id    = "...my_secret_id..."
  workspace_id = "e78bf606-8258-494e-a763-d5c72795b785"
}