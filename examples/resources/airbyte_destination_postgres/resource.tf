resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = false
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
    username = "Madalyn0"
  }
  definition_id = "50a9afbc-66c9-413a-9b78-062a6a13d9b7"
  name          = "Brent Fahey"
  workspace_id  = "8ffb0429-24fa-4eae-9018-c319374090ef"
}