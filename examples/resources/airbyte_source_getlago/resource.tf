resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "a97a1ae8-9496-4294-b2a0-2ceacfe7e017"
  name          = "Fredrick Ankunding"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f2040e06-9282-4dd6-a12c-b01cbd9faeed"
}