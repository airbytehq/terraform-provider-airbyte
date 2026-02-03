resource "airbyte_source_freshchat" "my_source_freshchat" {
  configuration = {
    account_name          = "...my_account_name..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-05-17T22:20:05.415Z"
  }
  definition_id = "f44e622f-4a5d-4beb-a2c8-89329da315dd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e86aed1-80d6-4ba6-bc31-20b614212916"
}