resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "730b3999-4a41-4e4a-8985-c78fa7d86bdf"
  name          = "Kristy Wilderman MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb121083-728d-489e-b51e-868df1f2c5ad"
}