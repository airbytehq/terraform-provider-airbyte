resource "airbyte_source_easypost" "my_source_easypost" {
  configuration = {
    start_date = "2022-02-26T05:47:52.967Z"
    username   = "...my_username..."
  }
  definition_id = "0b2a05ad-aa6e-422b-bf59-877f9498ad60"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bed9f646-8bfe-41ed-b108-7eae86ba77da"
}