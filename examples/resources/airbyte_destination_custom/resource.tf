resource "airbyte_destination_custom" "my_destination_custom" {
  configuration = { "user" : "charles" }
  definition_id = "93962c00-6aec-4ee7-8884-619655998ae2"
  name          = "Gwen Tillman"
  workspace_id  = "60fc4948-d719-417b-9771-58c7e04c5798"
}