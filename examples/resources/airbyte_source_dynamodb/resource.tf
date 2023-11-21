resource "airbyte_source_dynamodb" "my_source_dynamodb" {
  configuration = {
    access_key_id            = "A012345678910EXAMPLE"
    endpoint                 = "https://{aws_dynamo_db_url}.com"
    region                   = "us-west-1"
    reserved_attribute_names = "name, field_name, field-name"
    secret_access_key        = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "44c5465b-457a-42c2-a18f-e1b91dcce8e6"
  name          = "Faye Streich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75fb5812-2af6-4a8a-8655-36a205f1e4d3"
}