resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 3306
    raw_data_schema     = "...my_raw_data_schema..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Barbara.Kunde41"
  }
  definition_id = "83bb76cb-dd42-4c04-b7b6-03cc8cd887e7"
  name          = "Susan Dickinson I"
  workspace_id  = "ef7fc0d1-76e5-4f41-8549-f1242182d15e"
}