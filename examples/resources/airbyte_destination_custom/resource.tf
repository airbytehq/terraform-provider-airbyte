resource "airbyte_destination_custom" "my_destination_custom" {
  configuration = { "user" : "charles" }
  definition_id = "a293962c-006a-4ece-a7c8-84619655998a"
  name          = "Roy Grimes"
  workspace_id  = "c560fc49-48d7-4191-bbd7-7158c7e04c57"
}