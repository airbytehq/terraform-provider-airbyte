resource "airbyte_source_sendowl" "my_source_sendowl" {
  configuration = {
    password   = "...my_password..."
    start_date = "2022-03-22T04:51:04.176Z"
    username   = "...my_username..."
  }
  definition_id = "32a4ebc9-34ef-4dbe-8702-406f14678e59"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a0ddf6eb-81c6-4a7c-9e5f-1cb69279905c"
}