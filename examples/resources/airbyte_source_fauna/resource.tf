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
  definition_id = "b0b68d5f-b4b9-49e2-b7dc-2833c76bbd55"
  name          = "Jon Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ade0498-ec40-4fd8-ad91-61a05c5e8899"
}