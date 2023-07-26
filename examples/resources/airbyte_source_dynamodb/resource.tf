resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = ""
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
    source_type              = "dynamodb"
  }
  name         = "Sue Krajcik"
  workspace_id = "227b2d30-9470-4bf7-a4fa-87cf535a6fae"
}