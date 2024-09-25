resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "680e4417-c6f4-4b50-9c82-06a4b043ef09"
  name          = "Ricardo Cartwright"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5b726765-eab1-4ad8-8295-4bd759bdc8b9"
}