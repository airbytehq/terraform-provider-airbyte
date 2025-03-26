resource "airbyte_destination_mssql_v2" "my_destination_mssqlv2" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    schema          = "public"
    ssl_method = {
      # ...
    }
    user = "...my_user..."
  }
  definition_id = "c9fa67bf-f0a4-4a94-a50c-0a2889bc913d"
  name          = "...my_name..."
  workspace_id  = "ce5dceb6-f2b2-4d39-b087-2eee8dcc9b07"
}