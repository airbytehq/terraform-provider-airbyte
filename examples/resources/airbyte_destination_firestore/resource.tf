resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    destination_type = "firestore"
    project_id       = "...my_project_id..."
  }
  name         = "Ms. Cindy Wuckert"
  workspace_id = "9f5fce6c-5561-446c-be25-0fb008c42e14"
}