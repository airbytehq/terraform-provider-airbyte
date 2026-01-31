resource "airbyte_source_paperform" "my_source_paperform" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "e19e6069-d394-407c-9639-878e7300eb98"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5fc50bd-a5be-496d-8ae8-752b27c40e3a"
}