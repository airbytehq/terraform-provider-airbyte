resource "airbyte_source_ezofficeinventory" "my_source_ezofficeinventory" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-07-04T01:47:08.951Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "68fdfc06-92b4-4fd6-b3f5-9a8d0acc9948"
  name          = "Thomas Ankunding Jr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "59fac1d6-c9b0-4f0f-b5d9-42704e93ebb3"
}