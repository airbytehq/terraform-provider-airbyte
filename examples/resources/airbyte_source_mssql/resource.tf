resource "airbyte_source_mssql" "my_source_mssql" {
    configuration = {
        database = "master"
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 1433
        replication_method =     {
                data_to_sync = "New Changes Only"
                initial_waiting_seconds = 7
                method = "CDC"
                snapshot_isolation = "Read Committed"
            }
        schemas = [
            "...",
        ]
        source_type = "mssql"
        ssl_method =     {
                ssl_method = "encrypted_trust_server_certificate"
            }
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        username = "Theresa.Schinner"
    }
            name = "Mae Boehm"
            workspace_id = "8140b64f-f8ae-4170-af03-b5f37e4aa868"
        }