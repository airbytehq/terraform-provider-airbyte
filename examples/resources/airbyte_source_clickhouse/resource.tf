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
    username = "Triston_Strosin"
  }
  definition_id = "51612305-e0c1-4f4b-a5d9-ebd757e59469"
  name          = "Jerry Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "60869168-6308-4ead-b73c-369be0c12ece"
}