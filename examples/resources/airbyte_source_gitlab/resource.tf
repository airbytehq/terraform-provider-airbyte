resource "airbyte_source_gitlab" "my_source_gitlab" {
    configuration = {
        api_url = "gitlab.com"
        credentials =     {
                access_token = "...my_access_token..."
                auth_type = "oauth2.0"
                client_id = "...my_client_id..."
                client_secret = "...my_client_secret..."
                refresh_token = "...my_refresh_token..."
                token_expiry_date = "2022-01-16T05:28:22.895Z"
            }
        groups = "airbyte.io"
        projects = "airbyte.io/documentation"
        source_type = "gitlab"
        start_date = "2021-03-01T00:00:00Z"
    }
            name = "Arturo Wisoky"
            workspace_id = "079af4d3-5724-4cdb-8f4d-281187d56844"
        }