resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
    api_url = "...my_api_url..."
  }
  definition_id = "83f04591-0a7c-4570-970b-889169da4e6d"
  name          = "Brooke Deckow"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aa386da1-d2dd-4f03-91c4-9c6869005174"
}