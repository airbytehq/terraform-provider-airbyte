resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        source_fauna_collection_deletion_mode_disabled = {
          deletion_mode = "ignore"
        }
      }
      page_size = 4
    }
    domain      = "...my_domain..."
    port        = 5
    scheme      = "...my_scheme..."
    secret      = "...my_secret..."
    source_type = "fauna"
  }
  name         = "Irvin Klein"
  secret_id    = "...my_secret_id..."
  workspace_id = "1ffc71dc-a163-4f2a-bc80-a97ff334cddf"
}