resource "airbyte_destination_custom" "my_destination_custom" {
  configuration = { "user" : "charles" }
  definition_id = "07bacc7a-a59a-4a47-b4ae-31030ef9e941"
  name          = "...my_name..."
  workspace_id  = "38d0a8b3-769a-4f52-be2d-38d6aaf96641"
}