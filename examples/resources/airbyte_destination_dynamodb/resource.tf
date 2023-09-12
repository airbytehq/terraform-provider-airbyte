resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    destination_type           = "dynamodb"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "eu-south-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Joanna Kohler"
  workspace_id = "29cdb1a8-422b-4b67-9d23-22715bf0cbb1"
}