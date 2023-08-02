resource "airbyte_source_salesforce" "my_source_salesforce" {
    configuration = {
        auth_type = "Client"
        client_id = "...my_client_id..."
        client_secret = "...my_client_secret..."
        is_sandbox = false
        refresh_token = "...my_refresh_token..."
        source_type = "salesforce"
        start_date = "2021-07-25T00:00:00Z"
        streams_criteria = [
            {
                criteria = "ends not with"
                value = "...my_value..."
            },
        ]
    }
            name = "Kristopher Abernathy"
            workspace_id = "290f957f-3851-489a-97ef-807aae03f33c"
        }