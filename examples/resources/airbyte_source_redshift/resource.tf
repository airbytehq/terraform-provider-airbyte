resource "airbyte_source_redshift" "my_source_redshift" {
    configuration = {
        database = "master"
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 5439
        schemas = [
            "...",
        ]
        source_type = "redshift"
        username = "Miguel.Sauer"
    }
            name = "Alberto Hyatt"
            workspace_id = "cc74f77b-4848-4bd6-a6f0-441d2c3b8080"
        }