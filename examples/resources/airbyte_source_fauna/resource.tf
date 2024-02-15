resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        disabled = {}
      }
      page_size = 10
    }
    domain = "...my_domain..."
    port   = 10
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "5a2e94ef-f211-4adf-8721-dd1f80239a92"
  name          = "Miss Sam Kemmer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3eb11448-c1cd-43af-a5ef-85381e22d9fe"
}