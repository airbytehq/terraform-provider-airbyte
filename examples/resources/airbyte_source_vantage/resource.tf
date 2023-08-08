resource "airbyte_source_vantage" "my_source_vantage" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "vantage"
  }
  name         = "Mrs. Gerard Walter"
  secret_id    = "...my_secret_id..."
  workspace_id = "dd7caac9-b4ca-4a1c-be9e-15df903907f3"
}