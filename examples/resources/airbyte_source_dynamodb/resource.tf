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
    ignore_missing_read_permissions_tables = true
    region                                 = "ap-southeast-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "c1959643-3e1d-4514-84aa-c586d055244c"
  name          = "Michele Jones"
  secret_id     = "...my_secret_id..."
  workspace_id  = "457a2c26-18fe-41b9-9dcc-e8e649d7675f"
}