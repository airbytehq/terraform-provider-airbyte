resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "us-gov-west-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "fb7ef5d3-7ea6-4e5c-bc1c-0786ea3ea494"
  name          = "Mr. Ray Cummerata V"
  workspace_id  = "7dcad1af-a414-45a8-aad6-44361fa9c013"
}