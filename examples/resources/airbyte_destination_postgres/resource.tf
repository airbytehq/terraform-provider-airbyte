resource "airbyte_destination_postgres" "my_destination_postgres" {
    configuration = {
        database = "...my_database..."
        destination_type = "postgres"
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 5432
        schema = "public"
        ssl_mode =     {
                mode = "allow"
            }
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        username = "Marc_Predovic"
    }
            name = "Max O'Connell DDS"
            workspace_id = "e187f86b-c173-4d68-9eee-9526f8d986e8"
        }