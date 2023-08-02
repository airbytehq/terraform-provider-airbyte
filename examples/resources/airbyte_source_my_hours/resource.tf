resource "airbyte_source_my_hours" "my_source_myhours" {
    configuration = {
        email = "john@doe.com"
        logs_batch_size = 30
        password = "...my_password..."
        source_type = "my-hours"
        start_date = "%Y-%m-%d"
    }
            name = "Sara O'Kon"
            workspace_id = "dcb6682c-b70f-48cf-95fb-6e91b9a9f748"
        }