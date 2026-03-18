resource "airbyte_source_guru" "my_source_guru" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    search_cards_query    = "...my_search_cards_query..."
    start_date            = "2020-10-28T17:53:49.365Z"
    team_id               = "...my_team_id..."
    username              = "...my_username..."
  }
  definition_id = "30e2d5f2-63c1-4993-8079-c8abf24e747d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e138eef-875d-42e0-8fef-3846ce9c0d75"
}