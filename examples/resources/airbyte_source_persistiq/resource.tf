resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "1299d484-1410-4fd6-a7ec-48816b0c62b8"
  name          = "Mrs. Claude Hand"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c3e6c8bd-1ccc-4ad3-b1c4-065293193648"
}