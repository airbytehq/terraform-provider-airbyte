resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "d6014991-0eec-4fc7-b384-ec604057d045"
  name          = "Geneva Bogan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b5cccbbb-db31-4196-8f99-d67745afb65f"
}