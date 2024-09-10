resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30 04:50:23"
  }
  definition_id = "7f28ef97-5a7b-4102-a548-7915a2f449e5"
  name          = "Jose Price"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d5fb4b99-e2f7-4dc2-833c-76bbd55f566b"
}