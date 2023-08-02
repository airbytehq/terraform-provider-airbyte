resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "persistiq"
  }
  name         = "Ms. Daryl Hermiston"
  secret_id    = "...my_secretId..."
  workspace_id = "e4de04af-28c5-4ddd-b46a-a1cfd6d828da"
}