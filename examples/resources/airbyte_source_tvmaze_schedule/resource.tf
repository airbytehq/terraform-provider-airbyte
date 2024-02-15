resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "GB"
  }
  definition_id = "ddb7f1b7-1195-4e07-a103-643a6dfd2a60"
  name          = "Norma Heaney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac62eb10-f1a0-4d51-bb8b-e0416cb49da0"
}