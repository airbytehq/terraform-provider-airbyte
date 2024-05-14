resource "airbyte_destination_firestore" "my_destination_firestore" {
  configuration = {
    credentials_json = "...my_credentials_json..."
    project_id       = "...my_project_id..."
  }
  definition_id = "64562efb-7ef5-4d37-aa6e-5cbc1c0786ea"
  name          = "Elvira Olson"
  workspace_id  = "4c420209-7dca-4d1a-ba41-45a8ead64436"
}