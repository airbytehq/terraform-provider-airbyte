resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "glassfrog"
  }
  name         = "Angelica Langworth"
  secret_id    = "...my_secret_id..."
  workspace_id = "923b7e13-584f-47ae-92c6-891f82ce1157"
}