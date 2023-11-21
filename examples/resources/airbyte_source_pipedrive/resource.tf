resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    api_token              = "...my_api_token..."
    replication_start_date = "2017-01-25 00:00:00Z"
  }
  definition_id = "3b520112-5b29-4252-a784-d2d0f1707475"
  name          = "Sean Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49780ba1-d6a2-48c6-aefe-59b72db22407"
}