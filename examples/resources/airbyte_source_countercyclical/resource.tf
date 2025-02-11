resource "airbyte_source_countercyclical" "my_source_countercyclical" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "1d79c98d-bf84-4b0d-8029-dce1d2261940"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b8b87900-5b41-4d52-8d86-e43c69daebe1"
}