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
    region                                 = "me-central-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "58122af6-a8ac-4655-b6a2-05f1e4d309ea"
  name          = "Mrs. Carole Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fbd8663-14ca-4ce0-af96-b833556f7e41"
}