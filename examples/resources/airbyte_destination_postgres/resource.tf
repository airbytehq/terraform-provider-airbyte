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
    ssl                 = true
    ssl_mode = {
      allow = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Micaela.Kris"
  }
  definition_id = "62a6a13d-9b7f-4635-98ff-b042924faeae"
  name          = "Lisa Bergnaum"
  workspace_id  = "31937409-0efb-422d-b6fe-0864a856a041"
}