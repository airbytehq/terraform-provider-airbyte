resource "airbyte_source_okta" "my_source_okta" {
    configuration = {
        credentials =     {
                api_token = "...my_api_token..."
                auth_type = "api_token"
            }
        domain = "...my_domain..."
        source_type = "okta"
        start_date = "2022-07-22T00:00:00Z"
    }
            name = "Dominick Hayes"
            workspace_id = "d854439e-e224-4460-843b-c154188c2f56"
        }