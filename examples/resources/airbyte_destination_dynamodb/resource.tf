resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    destination_type           = "dynamodb"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "eu-west-3"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  name         = "Earl Mosciski DVM"
  workspace_id = "5d2cff7c-70a4-4562-ad43-6813f16d9f5f"
}