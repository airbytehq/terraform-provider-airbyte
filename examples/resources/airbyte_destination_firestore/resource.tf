resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  name         = "Shane Weimann MD"
  workspace_id = "fc11e74f-736d-47a9-93e9-8a4c049945ed"
}