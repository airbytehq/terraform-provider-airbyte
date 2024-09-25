resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 3
    }
    domain = "...my_domain..."
    port   = 0
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "e7fb5df2-5477-4f37-8b0e-c7c89bfb0cb9"
  name          = "Everett Schultz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "27a8c72c-3eb5-4dc5-9714-db07d7698733"
}