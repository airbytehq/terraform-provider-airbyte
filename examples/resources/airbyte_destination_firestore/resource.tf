resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    destination_type = "firestore"
    project_id       = "...my_project_id..."
  }
  name         = "Paula Jacobs I"
  workspace_id = "f16d9f5f-ce6c-4556-946c-3e250fb008c4"
}