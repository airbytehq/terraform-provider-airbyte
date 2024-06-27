resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "9e232888-b6bd-4e25-954a-52da80f2bfa4"
  name          = "Isaac Hessel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6950935a-d536-4c50-8473-4e30b46b959e"
}