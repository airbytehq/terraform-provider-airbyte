resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "fb7ef5d3-7ea6-4e5c-bc1c-0786ea3ea494"
  name          = "Mr. Ray Cummerata V"
  workspace_id  = "7dcad1af-a414-45a8-aad6-44361fa9c013"
}