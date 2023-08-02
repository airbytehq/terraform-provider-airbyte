resource "airbyte_source_mysql" "my_source_mysql" {
    configuration = {
        database = "...my_database..."
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 3306
        replication_method =     {
                initial_waiting_seconds = 4
                method = "CDC"
                server_time_zone = "...my_server_time_zone..."
            }
        source_type = "mysql"
        ssl_mode =     {
                mode = "preferred"
            }
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        username = "Terrence.Collins20"
    }
            name = "Velma Sipes II"
            workspace_id = "36d9e75c-a006-4f53-92c1-1a25a8bf92f9"
        }