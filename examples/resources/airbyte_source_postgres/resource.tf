resource "airbyte_source_postgres" "my_source_postgres" {
    configuration = {
        database = "...my_database..."
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 5432
        replication_method =     {
                initial_waiting_seconds = 3
                lsn_commit_behaviour = "After loading Data in the destination"
                method = "CDC"
                plugin = "pgoutput"
                publication = "...my_publication..."
                queue_size = 1
                replication_slot = "...my_replication_slot..."
            }
        schemas = [
            "...",
        ]
        source_type = "postgres"
        ssl_mode =     {
                mode = "allow"
            }
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        username = "Gina59"
    }
            name = "Krystal Kiehn"
            workspace_id = "e3c2059c-9c3f-4567-a0e2-52765b1d62fc"
        }