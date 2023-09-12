resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "glassfrog"
  }
  name         = "Carl Davis"
  secret_id    = "...my_secret_id..."
  workspace_id = "891f82ce-1157-4172-b053-77dcfa89df97"
}