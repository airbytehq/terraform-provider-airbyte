resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Justus_Hahn54"
  }
  definition_id = "7b5cce36-1485-4433-bdf2-3c5e509f4525"
  name          = "Mrs. Anna Pfannerstill"
  workspace_id  = "878c254c-d184-4fd1-96e7-5f1c50c9ec76"
}