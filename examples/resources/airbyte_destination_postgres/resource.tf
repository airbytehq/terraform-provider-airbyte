resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
    drop_cascade        = true
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
    username = "Ladarius_Abernathy72"
  }
  definition_id = "22db6fe0-864a-4856-a041-70ff8566dc32"
  name          = "Gladys Hintz"
  workspace_id  = "7b07bf07-28b7-4077-958c-67348eaa4356"
}