resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "8a7f4b51-c84b-4fb3-b2d3-f23e10cb143f"
  name          = "...my_name..."
  workspace_id  = "9839a229-aa78-46ab-be29-301131283087"
}