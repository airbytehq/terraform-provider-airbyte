resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 3306
    raw_data_schema     = "...my_raw_data_schema..."
    ssl                 = false
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Melody_Abernathy"
  }
  definition_id = "f86fe4a6-f8bb-4810-ad64-6f802e7b2183"
  name          = "Phillip Prohaska"
  workspace_id  = "f6db7afd-acad-42c1-8cf1-7a6683bb76cb"
}