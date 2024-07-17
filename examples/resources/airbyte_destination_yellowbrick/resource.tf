resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl             = false
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Jonathan.Mante"
  }
  definition_id = "6f396c7c-6bf7-4372-8213-ca1059f1e303"
  name          = "Nancy Weimann PhD"
  workspace_id  = "aa50681b-c3ad-4b09-8c01-3842c101e265"
}