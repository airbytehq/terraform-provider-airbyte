resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    api_url               = "...my_api_url..."
  }
  definition_id = "0ffee906-5986-410b-95a7-80c6f12aeac3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "97f7bde2-4d89-42d7-bfa2-4b297fa19493"
}