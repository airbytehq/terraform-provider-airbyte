resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 3306
    raw_data_schema     = "...my_raw_data_schema..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Deon.Russel49"
  }
  definition_id = "a6683bb7-6cbd-4d42-804b-7b603cc8cd88"
  name          = "Tricia Klocko I"
  workspace_id  = "813ef7fc-0d17-46e5-b414-549f1242182d"
}