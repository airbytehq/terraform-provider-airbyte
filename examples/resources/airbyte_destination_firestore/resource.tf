resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "27dc7500-6d1b-40b1-8b07-e2f2aea3c9f4"
  name          = "...my_name..."
  workspace_id  = "9839a229-aa78-46ab-be29-301131283087"
}