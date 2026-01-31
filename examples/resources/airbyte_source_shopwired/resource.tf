resource "airbyte_source_shopwired" "my_source_shopwired" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_secret            = "...my_api_secret..."
    start_date            = "2022-06-14T11:27:49.389Z"
  }
  definition_id = "e19e6069-d394-407c-9639-878e7300eb98"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5fc50bd-a5be-496d-8ae8-752b27c40e3a"
}