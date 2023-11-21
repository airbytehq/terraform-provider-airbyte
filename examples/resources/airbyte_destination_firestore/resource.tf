resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "53a4e50c-dde3-4bcf-b11f-630fa923b2f8"
  name          = "Sheldon Bernhard"
  workspace_id  = "868bf037-297d-4cd6-abcb-9a13f0bea64a"
}