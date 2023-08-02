resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    destination_type = "firestore"
    project_id       = "...my_project_id..."
  }
  name         = "Henrietta Hilpert"
  workspace_id = "c7e0bc71-78e4-4796-b2a7-0c688282aa48"
}