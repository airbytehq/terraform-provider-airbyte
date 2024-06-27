resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "us-west-1"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "4b807f99-3efa-4e2d-8af8-6589dab1153f"
  name          = "Eileen Kerluke"
  workspace_id  = "90b0855a-a0db-4797-942b-e7e5f1f78855"
}