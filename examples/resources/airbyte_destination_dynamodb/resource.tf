resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "ap-southeast-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "f993efae-2dca-4f86-989d-ab1153f466f7"
  name          = "Ms. Larry Reynolds"
  workspace_id  = "5aa0db79-7942-4be7-a5f1-f78855663545"
}