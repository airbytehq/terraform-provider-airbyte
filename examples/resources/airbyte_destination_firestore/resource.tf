resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "fa9c0130-5655-43a4-a50c-dde3bcff11f6"
  name          = "Angela Will"
  workspace_id  = "23b2f88e-15f8-468b-b037-297dcd66bcb9"
}