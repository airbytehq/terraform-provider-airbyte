resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "global"
  }
  definition_id = "3ecae3cb-491e-4a79-92cd-63d3381efe3f"
  name          = "Mercedes Heathcote"
  secret_id     = "...my_secret_id..."
  workspace_id  = "33d30ca4-aa9f-4684-99ab-345ef3183cb2"
}