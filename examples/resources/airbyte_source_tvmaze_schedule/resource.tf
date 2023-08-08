resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    source_type                    = "tvmaze-schedule"
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "US"
  }
  name         = "Angie Bogan"
  secret_id    = "...my_secret_id..."
  workspace_id = "0fda9664-89d7-4b78-a73e-13a12a6b9924"
}