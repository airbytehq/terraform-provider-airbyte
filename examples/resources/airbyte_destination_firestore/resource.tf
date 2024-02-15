resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "8cf13c35-89bc-43ea-ba63-d3987f09ed83"
  name          = "Rosemarie Bradtke"
  workspace_id  = "ddbef1f8-7bb5-4069-a16a-5a735a4e1801"
}