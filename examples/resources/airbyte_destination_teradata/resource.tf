resource "airbyte_destination_teradata" "my_destination_teradata" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    disable_type_dedupe   = false
    drop_cascade          = false
    host                  = "...my_host..."
    jdbc_url_params       = "...my_jdbc_url_params..."
    logmech = {
      ldap = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    query_band      = "...my_query_band..."
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "airbyte_td"
    ssl             = false
    ssl_mode = {
      verify_full = {
        ssl_ca_certificate = "...my_ssl_ca_certificate..."
      }
    }
  }
  definition_id = "58e6f9da-904e-11ed-a1eb-0242ac120002"
  name          = "...my_name..."
  workspace_id  = "a9f65ee8-669c-48fd-aadc-bf3b835fc521"
}