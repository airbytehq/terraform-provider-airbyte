resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 9
    }
    domain = "...my_domain..."
    port   = 3
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "2e6bc1e2-2381-4cdc-ae96-42f3c2fe19c3"
  name          = "Jana Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e92bc337-3ad2-4c88-bf28-ef975a7b102e"
}