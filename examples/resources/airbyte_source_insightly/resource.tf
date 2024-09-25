resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "6a28df31-96ea-4920-bcb7-876e75a531f3"
  name          = "Mr. Bradley Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3b9d6749-76db-4e11-ac78-116c70bfb326"
}