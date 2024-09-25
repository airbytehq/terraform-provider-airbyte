resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "us-gov-west-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "eca9f91e-b58c-4332-9745-6993f0626846"
  name          = "Ms. Betty Shanahan"
  workspace_id  = "7ed52cbf-f018-4589-b5bd-fe2750539f4b"
}