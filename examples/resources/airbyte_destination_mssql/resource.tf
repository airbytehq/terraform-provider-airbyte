resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Orville59"
  }
  definition_id = "374090ef-b22d-4b6f-a086-4a856a04170f"
  name          = "Bob Hamill"
  workspace_id  = "dc323359-77b0-47bf-8728-b7077558c673"
}