resource "airbyte_destination_keen" "my_destination_keen" {
  configuration = {
    api_key         = "ABCDEFGHIJKLMNOPRSTUWXYZ"
    infer_timestamp = false
    project_id      = "58b4acc22ba938934e888322e"
  }
  definition_id = "23f0d76f-b78b-4f74-ba22-de12791b5f13"
  name          = "Mr. Angelina Becker"
  workspace_id  = "49774ae8-7c30-4892-bfb0-f41f82248d60"
}