resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    destination_type           = "dynamodb"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "ap-southeast-2"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Amber Dibbert"
  workspace_id = "db1a8422-bb67-49d2-b227-15bf0cbb1e31"
}