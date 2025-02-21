resource "airbyte_destination_mssql_v2" "my_destination_mssqlv2" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {
        additional_properties = "{ \"see\": \"documentation\" }"
        name                  = "encrypted_trust_server_certificate"
      }
      encrypted_verify_certificate = {
        additional_properties    = "{ \"see\": \"documentation\" }"
        host_name_in_certificate = "...my_host_name_in_certificate..."
        name                     = "encrypted_verify_certificate"
        trust_store_name         = "...my_trust_store_name..."
        trust_store_password     = "...my_trust_store_password..."
      }
      unencrypted = {
        additional_properties = "{ \"see\": \"documentation\" }"
        name                  = "unencrypted"
      }
    }
    user = "...my_user..."
  }
  definition_id = "c9fa67bf-f0a4-4a94-a50c-0a2889bc913d"
  name          = "...my_name..."
  workspace_id  = "ce5dceb6-f2b2-4d39-b087-2eee8dcc9b07"
}