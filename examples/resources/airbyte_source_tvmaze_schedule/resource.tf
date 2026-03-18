resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    additional_properties          = "{ \"see\": \"documentation\" }"
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "US"
  }
  definition_id = "bd14b08f-9f43-400f-b2b6-7248b5c72561"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "164d4502-59a7-4077-a984-eb87d40df081"
}