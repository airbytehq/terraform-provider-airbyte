resource "airbyte_source_trustpilot" "my_source_trustpilot" {
    configuration = {
        business_units = [
            "...",
        ]
        credentials =     {
                auth_type = "apikey"
                client_id = "...my_client_id..."
            }
        source_type = "trustpilot"
        start_date = "%Y-%m-%dT%H:%M:%S"
    }
            name = "Jesus Smith"
            workspace_id = "a74c0252-fe3b-44b4-9b8b-778ebb6e1d2c"
        }