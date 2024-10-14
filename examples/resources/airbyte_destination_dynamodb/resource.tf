resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "ca-west-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "f47ce6b2-d7a7-4fd6-8cc3-8ee7d32ea81a"
  name          = "...my_name..."
  workspace_id  = "613ace27-5b83-4144-af10-cde0eac3bedf"
}