resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "21bc073a-bf4d-4feb-9414-e5a603e6b3fc"
  name          = "Paul Donnelly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2cb14510-2641-479a-8030-1bb87b13a43b"
}