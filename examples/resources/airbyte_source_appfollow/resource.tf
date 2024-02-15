resource "airbyte_source_appfollow" "my_source_appfollow" {
  configuration = {
    api_secret = "...my_api_secret..."
  }
  definition_id = "acdf8db6-a4f7-4e23-b11b-260f5d38a1ed"
  name          = "Abraham Franey"
  secret_id     = "...my_secret_id..."
  workspace_id  = "da3d51cb-c156-423e-8645-3ce6c3cf0d0e"
}