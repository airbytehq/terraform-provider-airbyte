resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "GB"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "GB"
  }
  definition_id = "eac7526c-0e68-4d41-b294-78bd831a4caf"
  name          = "Hattie Beer DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2320a84c-82fe-4ed3-9fd4-712605259781"
}