resource "airbyte_destination_mssql" "my_destination_mssql" {
    configuration = {
        database = "...my_database..."
        destination_type = "mssql"
        host = "...my_host..."
        jdbc_url_params = "...my_jdbc_url_params..."
        password = "...my_password..."
        port = 1433
        schema = "public"
        ssl_method =     {
                ssl_method = "encrypted_trust_server_certificate"
            }
        tunnel_method =     {
                tunnel_method = "NO_TUNNEL"
            }
        username = "Haylie37"
    }
            name = "Joe Hoppe"
            workspace_id = "1f08f429-4e36-498f-847f-603e8b445e80"
        }