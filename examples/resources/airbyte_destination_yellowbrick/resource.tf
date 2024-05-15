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
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Beulah.Sipes"
  }
  definition_id = "4173cccb-bc51-4a3c-aa62-e557cba0d338"
  name          = "Maria Considine"
  workspace_id  = "767fcf37-9fa4-4011-aae8-db1144f7f4dc"
}