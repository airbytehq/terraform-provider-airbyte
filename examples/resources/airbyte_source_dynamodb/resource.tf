resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    credentials = {
      role_based_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
      }
    }
    endpoint                               = "https://{aws_dynamo_db_url}.com"
    ignore_missing_read_permissions_tables = false
    region                                 = "ap-southeast-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "50401137-8871-4c5a-abb7-1f5fda35545a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6e654cbb-f82e-40a5-9542-939f3129c0d9"
}