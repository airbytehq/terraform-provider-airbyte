resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        source_fauna_collection_deletion_mode_disabled = {
          deletion_mode = "ignore"
        }
      }
      page_size = 9
    }
    domain      = "...my_domain..."
    port        = 10
    scheme      = "...my_scheme..."
    secret      = "...my_secret..."
    source_type = "fauna"
  }
  name         = "Mrs. Edna Abbott"
  secret_id    = "...my_secretId..."
  workspace_id = "78a61fa1-cf20-4688-b77c-1ffc71dca163"
}