resource "airbyte_source_goldcast" "my_source_goldcast" {
  configuration = {
    access_key = "...my_access_key..."
  }
  definition_id = "0fd97d44-947a-4fd1-bd1b-7d6f924177d1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "1e4e2d8b-a568-4f65-a5cf-fa40f9048f99"
}