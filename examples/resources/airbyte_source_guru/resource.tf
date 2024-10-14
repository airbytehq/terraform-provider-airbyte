resource "airbyte_source_guru" "my_source_guru" {
  configuration = {
    password           = "...my_password..."
    search_cards_query = "...my_search_cards_query..."
    start_date         = "2020-10-28T17:53:49.365Z"
    team_id            = "...my_team_id..."
    username           = "...my_username..."
  }
  definition_id = "070fb085-f5b2-4691-9959-fade7aaabb84"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e138eef-875d-42e0-8fef-3846ce9c0d75"
}