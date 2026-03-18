resource "airbyte_source_trello" "my_source_trello" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    board_ids = [
      "..."
    ]
    key        = "...my_key..."
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "8da67652-004c-11ec-9a03-0242ac130003"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ab85cf86-f21d-4941-a1bf-9ab5780432e4"
}