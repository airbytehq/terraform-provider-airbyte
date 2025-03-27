resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    collection = {
      deletions = {
        enabled = {
          column = "...my_column..."
        }
      }
      page_size = 2
    }
    domain = "...my_domain..."
    port   = 3
    scheme = "...my_scheme..."
    secret = "...my_secret..."
  }
  definition_id = "7da8a804-135a-42a9-9fae-e38938f1ebbf"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "82a1bb0b-2686-4b4c-86cd-84520efe37b7"
}