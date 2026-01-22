resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl             = true
    ssl_mode = {
      # ...
    }
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "81a773ac-fba0-424f-a74b-6a91a45ce8fe"
  name          = "...my_name..."
  workspace_id  = "2d4bfbc0-aa6b-42b1-9222-6303d0c9671f"
}