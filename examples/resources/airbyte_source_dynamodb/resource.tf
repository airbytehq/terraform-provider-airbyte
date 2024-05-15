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
    region                                 = "ca-west-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "a8cd9c5a-ad47-4afd-a11e-10d002e1c73f"
  name          = "Dr. Willis Padberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9a63be20-9caa-4593-ab80-8ec8c0a1f116"
}