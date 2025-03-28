resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    load_type = {
      insert_load = {
        additional_properties = "{ \"see\": \"documentation\" }"
        load_type             = "INSERT"
      }
    }
    password = "...my_password..."
    port     = 1433
    schema   = "public"
    ssl_method = {
      encrypted_verify_certificate = {
        additional_properties    = "{ \"see\": \"documentation\" }"
        host_name_in_certificate = "...my_host_name_in_certificate..."
        name                     = "encrypted_verify_certificate"
        trust_store_name         = "...my_trust_store_name..."
        trust_store_password     = "...my_trust_store_password..."
      }
    }
    user = "...my_user..."
  }
  definition_id = "a282fec3-7b94-4274-9620-860fbc85f5d6"
  name          = "...my_name..."
  workspace_id  = "2e9afd8a-c9ca-4f91-bf9f-71f1a7c362df"
}