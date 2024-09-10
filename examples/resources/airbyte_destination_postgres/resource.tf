resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    drop_cascade        = false
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
    username = "Ed.Crooks"
  }
  definition_id = "3050a9af-bc66-4c91-ba5b-78062a6a13d9"
  name          = "Cody Williamson"
  workspace_id  = "598ffb04-2924-4fae-ae50-18c319374090"
}