resource "airbyte_source_notion" "my_source_notion" {
    configuration = {
        credentials =     {
                auth_type = "token"
                token = "...my_token..."
            }
        source_type = "notion"
        start_date = "2020-11-16T00:00:00.000Z"
    }
            name = "Victor Gleason"
            workspace_id = "da21729f-2ac4-41ef-9725-f1169ac1e41d"
        }