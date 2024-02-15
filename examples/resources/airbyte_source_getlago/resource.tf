resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "0de80e3d-b905-4020-95d2-de4b8db33d2b"
  name          = "Cecilia Cremin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b342a10-fbc4-47ca-b061-39037c7eef97"
}