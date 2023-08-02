resource "airbyte_source_square" "my_source_square" {
    configuration = {
        credentials =     {
                api_key = "...my_api_key..."
                auth_type = "API Key"
            }
        include_deleted_objects = true
        is_sandbox = false
        source_type = "square"
        start_date = "2022-03-30"
    }
            name = "Erma Hagenes"
            workspace_id = "d2daa784-aba3-4d23-8edf-73811a115382"
        }