resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    database              = "...my_database..."
    enable_json           = true
    host                  = "...my_host..."
    password              = "...my_password..."
    port                  = "...my_port..."
    protocol              = "https"
    record_window_size    = 4
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "...my_username..."
  }
  definition_id = "f7e79763-e821-47f1-9f09-071b66436a92"
  name          = "...my_name..."
  workspace_id  = "18cdd7db-9638-49f4-915d-c14e35de40fa"
}