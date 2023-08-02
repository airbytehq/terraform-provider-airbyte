resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    destination_type = "firestore"
    project_id       = "...my_project_id..."
  }
  name         = "Mr. Irma Schaefer"
  workspace_id = "b3cdca42-5190-44e5-a3c7-e0bc7178e479"
}