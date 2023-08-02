resource "airbyte_source_monday" "my_source_monday" {
    configuration = {
        credentials =     {
                api_token = "...my_api_token..."
                auth_type = "api_token"
            }
        source_type = "monday"
    }
            name = "Carl Weimann"
            workspace_id = "bdd88e71-f6c4-4825-ad77-71e7fd074009"
        }