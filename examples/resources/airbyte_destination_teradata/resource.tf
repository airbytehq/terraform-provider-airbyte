resource "airbyte_destination_teradata" "my_destination_teradata" {
  configuration = {
    disable_type_dedupe = true
    drop_cascade        = false
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    logmech = {
      ldap = {
        password = "...my_password..."
        username = "...my_username..."
      }
      td2 = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    query_band      = "...my_query_band..."
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "airbyte_td"
    ssl             = false
    ssl_mode = {
      # ...
    }
  }
  definition_id = "d113370e-613a-4d8a-8685-e4d05d32dcea"
  name          = "...my_name..."
  workspace_id  = "a9f65ee8-669c-48fd-aadc-bf3b835fc521"
}