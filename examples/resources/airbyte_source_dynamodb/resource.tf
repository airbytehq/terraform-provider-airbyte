resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = "ap-southeast-2"
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
    source_type              = "dynamodb"
  }
  name         = "Tom Wintheiser"
  secret_id    = "...my_secretId..."
  workspace_id = "7cf535a6-fae5-44eb-b60c-321f023b75d2"
}