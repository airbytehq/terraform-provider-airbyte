resource "airbyte_source_fauna" "my_source_fauna" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    collection = {
      deletions = {
        enabled = {
          column = "deleted_at"
        }
      }
      page_size = 64
    }
    domain = "db.fauna.com"
    port   = 443
    scheme = "https"
    secret = "...my_secret..."
  }
  definition_id = "3825db3e-c94b-42ac-bd53-b5a9507ace2b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "82a1bb0b-2686-4b4c-86cd-84520efe37b7"
}