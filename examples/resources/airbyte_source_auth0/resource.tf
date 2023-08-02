resource "airbyte_source_auth0" "my_source_auth0" {
    configuration = {
        base_url = "https://dev-yourOrg.us.auth0.com/"
        credentials =     {
                access_token = "...my_access_token..."
                auth_type = "oauth2_access_token"
            }
        source_type = "auth0"
    }
            name = "Wendy McKenzie"
            workspace_id = "9e057eb8-09e2-4810-b31f-3981d4c700b6"
        }