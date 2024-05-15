resource "airbyte_destination_dynamodb" "my_destination_dynamodb" {
  configuration = {
    access_key_id              = "A012345678910EXAMPLE"
    dynamodb_endpoint          = "http://localhost:9000"
    dynamodb_region            = "ap-south-2"
    dynamodb_table_name_prefix = "airbyte_sync"
    secret_access_key          = "a012345678910ABCDEFGH/AbCdEfGhEXAMPLEKEY"
  }
  definition_id = "9f4b807f-993e-4fae-adca-f86589dab115"
  name          = "Tami Gottlieb"
  workspace_id  = "f790b085-5aa0-4db7-9794-2be7e5f1f788"
}