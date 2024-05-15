resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
  }
  definition_id = "2e02b7e6-dd49-4df5-8359-2a5dd7ddbd79"
  name          = "Kari Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "894fd682-a677-4b1b-8dbb-aeb9b5c2e2ee"
}