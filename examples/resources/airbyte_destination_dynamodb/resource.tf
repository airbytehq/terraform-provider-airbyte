resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "ca-west-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "8ccd8909-4e99-4141-b48d-4984b70b2d89"
  name          = "...my_name..."
  workspace_id  = "613ace27-5b83-4144-af10-cde0eac3bedf"
}