resource "airbyte_source_github" "my_source_github" {
    configuration = {
        branch = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
        credentials =     {
                access_token = "...my_access_token..."
                option_title = "OAuth Credentials"
            }
        repository = "airbytehq/airbyte"
        requests_per_hour = 8
        source_type = "github"
        start_date = "2021-03-01T00:00:00Z"
    }
            name = "Bert Schultz"
            workspace_id = "80df448a-47f9-4390-8588-80983dabf9ef"
        }