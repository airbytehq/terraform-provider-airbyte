resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    credentials = {
      authenticate_via_access_keys = {
        access_key_id         = "A012345678910EXAMPLE"
        additional_properties = "{ \"see\": \"documentation\" }"
        secret_access_key     = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
      }
    }
    endpoint                               = "https://{aws_dynamo_db_url}.com"
    ignore_missing_read_permissions_tables = false
    region                                 = "ap-northeast-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "b36cf1af-cf94-4e3c-b9cb-eca1c7573a5b"
  name          = "Randolph Olson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d4c0a2ce-f781-4247-9bca-9a4804a9e0dd"
}