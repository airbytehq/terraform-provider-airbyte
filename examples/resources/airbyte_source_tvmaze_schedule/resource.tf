resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
  configuration = {
    domestic_schedule_country_code = "US"
    end_date                       = "...my_end_date..."
    start_date                     = "...my_start_date..."
    web_schedule_country_code      = "GB"
  }
  definition_id = "d4240654-f478-4274-8a2b-5a462428ebc5"
  name          = "Christian Koch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "df0c9ce1-6ebe-485f-a64a-ee8d2bde48ee"
}