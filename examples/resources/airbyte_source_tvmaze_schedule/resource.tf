resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "US"
  }
  name         = "Willard Hand"
  secret_id    = "...my_secret_id..."
  workspace_id = "cc9acc6e-7e95-4c9a-bc9f-197511d62479"
}