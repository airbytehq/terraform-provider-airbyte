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
    username = "Margarete_Walker91"
  }
  definition_id = "47490588-d0e2-4939-974a-681eea74b87a"
  name          = "Ms. Dixie Pollich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d33223d8-0bb9-4936-ad2f-45974a2ebc36"
}