resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    database              = "default"
    enable_json           = false
    host                  = "...my_host..."
    password              = "...my_password..."
    port                  = "8443"
    protocol              = "https"
    record_window_size    = 4
    tunnel_method = {
      no_tunnel = {
        additional_properties = "{ \"see\": \"documentation\" }"
        tunnel_method         = "NO_TUNNEL"
      }
    }
    username = "default"
  }
  definition_id = "ce0d828e-1dc4-496c-b122-2da42e637e48"
  name          = "...my_name..."
  workspace_id  = "18cdd7db-9638-49f4-915d-c14e35de40fa"
}