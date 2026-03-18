resource "airbyte_source_reddit" "my_source_reddit" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    exact                 = false
    include_over_18       = false
    limit                 = 1000
    query                 = "airbyte"
    start_date            = "2022-03-13T00:28:12.795Z"
    subreddits = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "3ed344ac-4099-402c-bf83-1cfdc53295d9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "aa39cb1c-7b7a-4dd0-8715-54f9fb9a7b25"
}