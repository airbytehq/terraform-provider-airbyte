resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "c463b838-dc5f-4976-935f-73a45535fff5"
  name          = "Gerald Swift"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0cce548-6a3a-4161-9c53-f64148acb8b4"
}