resource "airbyte_source_mssql" "my_source_mssql" {
  configuration = {
    database        = "master"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    replication_method = {
      read_changes_using_change_data_capture_cdc = {
        initial_waiting_seconds              = 1
        invalid_cdc_cursor_position_behavior = "Fail sync"
        queue_size                           = 4
      }
    }
    schemas = [
      "...",
    ]
    ssl_method = {
      encrypted_trust_server_certificate = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Raymond.Armstrong73"
  }
  definition_id = "7968b724-2137-4fe2-a9e2-6c4c104f1dbe"
  name          = "Luz Brown"
  secret_id     = "...my_secret_id..."
  workspace_id  = "90447757-3847-465c-b741-8014d1f26365"
}