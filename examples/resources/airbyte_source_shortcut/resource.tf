resource "airbyte_source_shortcut" "my_source_shortcut" {
  configuration = {
    api_key_2  = "...my_api_key_2..."
    query      = "...my_query..."
    start_date = "2022-06-08T14:10:27.194Z"
  }
  definition_id = "2eff8de5-6504-4728-b0aa-ce290d7b3b35"
  name          = "Matt Wuckert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "206e7c66-5127-464e-9e9c-d819ecc37ba1"
}