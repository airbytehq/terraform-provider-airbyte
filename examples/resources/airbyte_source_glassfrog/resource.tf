resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "57e54a27-b617-4a01-ae6b-f68e1922df28"
  name          = "Mrs. Iris Jast"
  secret_id     = "...my_secret_id..."
  workspace_id  = "13a52314-031f-4d7b-82b3-c164c1950da3"
}