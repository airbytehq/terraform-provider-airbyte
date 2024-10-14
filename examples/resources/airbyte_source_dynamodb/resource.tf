resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    credentials = {
      authenticate_via_access_keys = {
        access_key_id         = "A012345678910EXAMPLE"
        additional_properties = "{ \"see\": \"documentation\" }"
        secret_access_key     = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
      }
      role_based_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    endpoint                               = "https://{aws_dynamo_db_url}.com"
    ignore_missing_read_permissions_tables = true
    region                                 = "ap-southeast-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "4102f2b2-2d6c-4289-a4cb-9348fe710c97"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6e654cbb-f82e-40a5-9542-939f3129c0d9"
}