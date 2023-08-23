resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "persistiq"
  }
  name         = "Silvia Toy"
  secret_id    = "...my_secret_id..."
  workspace_id = "d0c6d6ed-9c73-4dd6-b457-1509a8e870d3"
}