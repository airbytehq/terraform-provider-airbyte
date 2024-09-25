resource "airbyte_source_northpass_lms" "my_source_northpasslms" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "c50e6f12-11e1-4fcb-a6b9-0cc0df941919"
  name          = "Eduardo Collier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "09c167af-7bc3-44c4-a3b8-38dc5f976535"
}