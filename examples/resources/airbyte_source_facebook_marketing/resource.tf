resource "airbyte_source_facebook_marketing" "my_source_facebookmarketing" {
    configuration = {
        access_token = "...my_access_token..."
        account_id = "111111111111111"
        action_breakdowns_allow_empty = false
        custom_insights = [
            {
                action_breakdowns = [
                    "action_video_type",
                ]
                breakdowns = [
                    "frequency_value",
                ]
                end_date = "2017-01-26T00:00:00Z"
                fields = [
                    "cpm",
                ]
                insights_lookback_window = 5
                level = "ad"
                name = "Dr. Mona Ruecker"
                start_date = "2017-01-25T00:00:00Z"
                time_increment = 1
            },
        ]
        end_date = "2017-01-26T00:00:00Z"
        fetch_thumbnail_images = false
        include_deleted = false
        insights_lookback_window = 7
        max_batch_size = 5
        page_size = 0
        source_type = "facebook-marketing"
        start_date = "2017-01-25T00:00:00Z"
    }
            name = "Naomi Krajcik"
            workspace_id = "143f5a6c-98b5-4555-8080-d40bcacc6cbd"
        }