resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database        = "default"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Camille_Walsh19"
  }
  definition_id = "680abb37-6bce-466a-bc0c-e20da3e9aab7"
  name          = "Debbie Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b241893e-1da4-46c4-b685-d205011b8862"
}