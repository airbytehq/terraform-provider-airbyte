resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = "eu-south-1"
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "642f3c2f-e19c-432e-9fee-92bc3373ad2c"
  name          = "Ken Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8ef975a7-b102-4e54-8791-5a2f449e5b0b"
}