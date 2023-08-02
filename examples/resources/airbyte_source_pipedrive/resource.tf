resource "airbyte_source_pipedrive" "my_source_pipedrive" {
    configuration = {
        authorization = {
            api_token = "...my_api_token..."
            auth_type = "Token"
        }
        replication_start_date = "2017-01-25T00:00:00Z"
        source_type = "pipedrive"
    }
            name = "Rochelle Cormier"
            workspace_id = "a3b084da-9925-47d0-8f40-847a742d8449"
        }