resource "airbyte_source_quickbooks" "my_source_quickbooks" {
    configuration = {
        credentials =     {
                access_token = "...my_access_token..."
                auth_type = "oauth2.0"
                client_id = "...my_client_id..."
                client_secret = "...my_client_secret..."
                realm_id = "...my_realm_id..."
                refresh_token = "...my_refresh_token..."
                token_expiry_date = "2022-11-25T12:48:18.221Z"
            }
        sandbox = false
        source_type = "quickbooks"
        start_date = "2021-03-20T00:00:00+00:00"
    }
            name = "Gail Hoppe"
            workspace_id = "4e99fb0e-67e0-494f-9fed-5540ef53a34a"
        }