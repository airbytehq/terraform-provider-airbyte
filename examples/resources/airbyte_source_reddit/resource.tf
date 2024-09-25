resource "airbyte_source_reddit" "my_source_reddit" {
  configuration = {
    api_key         = "...my_api_key..."
    exact           = false
    include_over_18 = true
    limit           = 98.44
    query           = "...my_query..."
    start_date      = "2022-05-22T10:23:38.617Z"
    subreddits = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  definition_id = "f7d5a433-d30c-4a4a-a9f6-84d9ab345ef3"
  name          = "Leah Emmerich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e52a86a-dbb5-47c5-8be7-ccff9d072474"
}