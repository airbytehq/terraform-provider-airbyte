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
    region                                 = "af-south-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "c62aeeab-6a16-4bc0-b1be-5567777324c6"
  name          = "Horace Kunde"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dac63878-54b6-49c4-ae8b-9a534c06fe5a"
}