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
    region                                 = "il-central-1"
    reserved_attribute_names               = "name, field_name, field-name"
  }
  definition_id = "ad00caee-12c4-4e65-b57e-54a27b617a01"
  name          = "Lorena Huel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "68e1922d-f283-4a61-8313-a52314031fd7"
}