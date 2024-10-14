resource "airbyte_source_reddit" "my_source_reddit" {
  configuration = {
    api_key         = "...my_api_key..."
    exact           = false
    include_over_18 = false
    limit           = 7.22
    query           = "...my_query..."
    start_date      = "2022-03-13T00:28:12.795Z"
    subreddits = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "4f067f59-71b2-4ee8-9f10-699b0aa1c7e5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "aa39cb1c-7b7a-4dd0-8715-54f9fb9a7b25"
}