resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = "us-gov-west-1"
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
    source_type              = "dynamodb"
  }
  name         = "Sandra Rowe Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "f023b75d-2367-4fe1-a0cc-8df79f0a396d"
}