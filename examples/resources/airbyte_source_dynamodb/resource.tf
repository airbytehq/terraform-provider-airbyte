resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = "us-gov-east-1"
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
    source_type              = "dynamodb"
  }
  name         = "Monique Hackett"
  secret_id    = "...my_secret_id..."
  workspace_id = "87cf535a-6fae-454e-bf60-c321f023b75d"
}