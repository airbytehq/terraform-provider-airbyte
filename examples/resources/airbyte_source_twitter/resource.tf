resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2020-01-18T12:46:16.717Z"
    query      = "...my_query..."
    start_date = "2022-03-25T00:43:50.915Z"
  }
  definition_id = "3592a5dd-7ddb-4d79-bd2e-b894fd682a67"
  name          = "Whitney Casper"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dbbaeb9b-5c2e-42ee-8b85-f41cf2efd5ed"
}