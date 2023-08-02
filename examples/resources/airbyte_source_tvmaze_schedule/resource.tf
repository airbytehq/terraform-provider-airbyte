resource "airbyte_source_tvmaze_schedule" "my_source_tvmazeschedule" {
    configuration = {
        domestic_schedule_country_code = "GB"
        end_date = "...my_end_date..."
        source_type = "tvmaze-schedule"
        start_date = "...my_start_date..."
        web_schedule_country_code = "US"
    }
            name = "Judy Rath"
            workspace_id = "b2cbc463-5d5e-465d-a028-c3e951a1e30f"
        }