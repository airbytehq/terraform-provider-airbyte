resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Bessie Ernser"
  secret_id    = "...my_secret_id..."
  workspace_id = "c6ca7fcd-ac63-4878-94b6-9c42e8b9a534"
}