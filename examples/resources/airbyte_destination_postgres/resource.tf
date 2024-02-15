resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 5432
    raw_data_schema     = "...my_raw_data_schema..."
    schema              = "public"
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Meagan_Treutel48"
  }
  definition_id = "dc7cde8f-8d83-492a-ab15-fb458bad9ea7"
  name          = "Marlene Brekke"
  workspace_id  = "852a459d-e520-4ce3-820a-295e5c099628"
}