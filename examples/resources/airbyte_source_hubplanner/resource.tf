resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "b240d626-d488-47cc-aaf5-8e0f5c1159d6"
  name          = "Frances Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10eecfc7-f384-4ec6-8405-7d0451918db5"
}