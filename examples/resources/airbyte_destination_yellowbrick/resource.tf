resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    database              = "...my_database..."
    host                  = "...my_host..."
    jdbc_url_params       = "...my_jdbc_url_params..."
    password              = "...my_password..."
    port                  = 5432
    schema                = "public"
    ssl                   = false
    ssl_mode = {
      require = {
        # ...
      }
    }
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "1f7bac7e-53ff-4e0b-b6df-b74aa85cf703"
  name          = "...my_name..."
  workspace_id  = "2d4bfbc0-aa6b-42b1-9222-6303d0c9671f"
}