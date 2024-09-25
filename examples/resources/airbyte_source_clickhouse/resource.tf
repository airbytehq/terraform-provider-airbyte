resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database        = "default"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    ssl             = true
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Brittany75"
  }
  definition_id = "5465b457-a2c2-4618-be1b-91dcce8e649d"
  name          = "Jessie Kunze"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b58122af-6a8a-4c65-936a-205f1e4d309e"
}